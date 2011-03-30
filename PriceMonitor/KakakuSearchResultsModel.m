#import "KakakuSearchResultsModel.h"
#import "KakakuSearchResponse.h"
#import "Utils.h"
#import "GlobalSettings.h"

const static NSUInteger kKakakuBatchSize = 1;   // The number of results to pull down with each request to the server.

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
                responseProcessor = [[KakakuSearchResponse alloc] init];
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
    
    NSString *offset = [NSString stringWithFormat:@"%lu", (unsigned long)recordOffset];
	GlobalSettings* settings = [GlobalSettings settings];
	NSString *viewCount = [NSString stringWithFormat:@"%lu", (unsigned long)(settings.displayCount+1)*20];
	NSArray* listStr = [Utils splitString:searchTerms separator:@" "];
	NSString* strQuery = [Utils separatedText:listStr separator:@"+"];
	
    //http://kakaku.com/search_results/mac+air/?category=&c=&act=Page&page=2        
    NSString *url = [NSString stringWithFormat:@"%@%@/?category=&c=&sort=%@&n=%@&act=Page&page=%@", 
					 @"http://kakaku.com/search_results/", strQuery, [settings displaySort], viewCount, offset];
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
	recordOffset = 1;
    [[responseProcessor objects] removeAllObjects];
}

- (void)setSearchTerms:(NSString *)theSearchTerms
{
    if (![theSearchTerms isEqualToString:searchTerms]) {
		[searchTerms release];
		searchTerms = [theSearchTerms retain];

		recordOffset = 1;
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
