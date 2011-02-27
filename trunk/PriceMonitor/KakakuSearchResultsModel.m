#import "KakakuSearchResultsModel.h"
#import "KakakuXMLResponse.h"
#import "Utils.h"

const static NSUInteger kKakakuBatchSize = 10;   // The number of results to pull down with each request to the server.

@implementation KakakuSearchResultsModel

@synthesize searchTerms;

- (id)initWithResponseFormat:(SearchResponseFormat)responseFormat;
{
    if ((self = [super init])) {
        switch ( responseFormat ) {
            case SearchResponseFormatJSON:
                responseProcessor = nil;//[[YahooJSONResponse alloc] init];
                break;
            case SearchResponseFormatXML:
                responseProcessor = [[KakakuXMLResponse alloc] init];
                break;
            default:
                [NSException raise:@"SearchResponseFormat unknown!" format:nil];
        }
		
		recordOffset = 0;
    }
    return self;
}

- (id)init
{
    return [self initWithResponseFormat:CurrentSearchResponseFormat];
}

- (void)load:(TTURLRequestCachePolicy)cachePolicy more:(BOOL)more
{
    if (!searchTerms) {
        //TTLOG(@"No search terms specified. Cannot load the model resource.");
        return;
    }
    
    if (more)
        recordOffset += kKakakuBatchSize;
    else
        [responseProcessor.objects removeAllObjects]; // Clear out data from previous request.
    
//    NSString *offset = [NSString stringWithFormat:@"%lu", (unsigned long)recordOffset];
//    NSString *batchSize = [NSString stringWithFormat:@"%lu", (unsigned long)kYahooBatchSize];
    
    // Construct the request.
//    NSString *host = @"http://kakaku.com";
//    NSString *path = @"/search_results/";
//    NSDictionary *parameters = [NSDictionary dictionaryWithObjectsAndKeys:
//                                searchTerms, @"query",
//                                nil];
	NSArray* listStr = [Utils splitString:searchTerms separator:@" "];
	NSString* strQuery = [Utils separatedText:listStr separator:@"+"];
	
            
    //NSString *url = @"http://kakaku.com/search_results/?query=mac";//[host stringByAppendingFormat:@"%@?%@", path, [parameters gtm_httpArgumentsString]];
    NSString *url = [NSString stringWithFormat:@"%@%@", @"http://kakaku.com/search_results/?query=", strQuery];
    TTURLRequest *request = [TTURLRequest requestWithURL:url delegate:self];
    request.cachePolicy = cachePolicy;
    request.response = responseProcessor;
    request.httpMethod = @"GET";
    
    // Dispatch the request.
    [request send];
}

- (void)reset
{
    [super reset];
    [searchTerms release];
    searchTerms = nil;
	recordOffset = 0;
    [[responseProcessor objects] removeAllObjects];
}

- (void)setSearchTerms:(NSString *)theSearchTerms
{
    if (![theSearchTerms isEqualToString:searchTerms]) {
		[searchTerms release];
		searchTerms = [theSearchTerms retain];

		recordOffset = 0;
    }
}

- (NSArray *)results
{
    return [[[responseProcessor objects] copy] autorelease];
}

- (NSUInteger)totalResultsAvailableOnServer
{
    return [responseProcessor totalObjectsAvailableOnServer];
}

- (void)dealloc
{
    [searchTerms release];
    [responseProcessor release];
    [super dealloc];
}


@end
