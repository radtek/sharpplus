#import "KakakuSearchResultsModel.h"
#import "KakakuSearchResponse.h"
#import "Utils.h"
#import "GlobalSettings.h"
#import "KakakuService.h"
#import "PriceMonitorAppDelegate.h"

const static NSUInteger kKakakuBatchSize = 1;   // The number of results to pull down with each request to the server.

@implementation KakakuSearchResultsModel

@synthesize searchTerms, apiKey;

- (void) displayDebugDIOS:(id)aDIOSConnect {
	NSLog([aDIOSConnect responseStatusMessage]);
	if([aDIOSConnect connResult] == nil) {
		if([aDIOSConnect respondsToSelector:@selector(error)]) {
			//[responseView setText:]; 
			NSLog([NSString stringWithFormat:@"%@", [aDIOSConnect error]]);
		}
	} else {
		NSLog([NSString stringWithFormat:@"%@", [aDIOSConnect connResult]]);
	}
}

- (id)initWithResponseFormat:(SearchResponseFormat)responseFormat;
{
    if ((self = [super init])) {
        switch ( responseFormat ) {
            case SearchResponseFormatJSON:
                responseProcessor = nil;//[[YahooJSONResponse alloc] init];
                break;
            case SearchResponseFormatXML:
                responseProcessor = [[KakakuSearchResponse alloc] init];
				//
				if (!apiKey){
					//send apikey request
					PriceMonitorAppDelegate* delegate = (PriceMonitorAppDelegate*)[[UIApplication sharedApplication] delegate];
					
					KakakuService *serv = [[KakakuService alloc] initWithSession:[delegate session]];
					[serv getKey];
					[self displayDebugDIOS:serv];
					self.apiKey = [serv.connResult objectForKey:@"#data"];
					[serv release]; 
					
					NSLog(self.apiKey);
					
					//apiKey = @"1d1283ee00e0882692243ef57f73288f";					
				}
				
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
	//http://api.kakaku.com/WebAPI/ItemSearch/Ver1.0/ItemSearch.aspx?Keyword=%E3%82%A2%E3%82%AF%E3%82%AA%E3%82%B9+LED&resultset=medium&categorygroup=kaden&pagenum=1&minprice=100000&maxprice=150000&ApiKey=1d1283ee00e0882692243ef57f73288f
    NSString *url = [NSString stringWithFormat:@"%@%@&resultset=medium&categorygroup=ALL&pagenum=%@&SortOrder=%@&HitNum=%@&ApiKey=%@", 
					 @"http://api.kakaku.com/WebAPI/ItemSearch/Ver1.0/ItemSearch.aspx?Keyword=", 
					 strQuery, 
					 offset,
					 [settings displaySort], 
					 viewCount,
					 //@"1d1283ee00e0882692243ef57f73288f"
					 self.apiKey];
	NSLog(url);
    TTURLRequest *request = [TTURLRequest requestWithURL:url delegate:self];
    request.cachePolicy = TTURLRequestCachePolicyNoCache;//cachePolicy;
    request.response = responseProcessor;
    request.httpMethod = @"GET";
    
    // Dispatch the request.
    [request send];
}

- (void)reset
{
    [super reset];
    [searchTerms release];
	[apiKey release];
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
