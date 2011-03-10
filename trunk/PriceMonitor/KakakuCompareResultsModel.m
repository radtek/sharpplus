#import "KakakuCompareResultsModel.h"
#import "KakakuCompareResponse.h"
#import "Utils.h"
#import "GlobalSettings.h"

const static NSUInteger kKakakuBatchSize = 1;   // The number of results to pull down with each request to the server.

@implementation KakakuCompareResultsModel

@synthesize itemId;

- (id)initWithResponseFormat:(CompareResponseFormat)responseFormat;
{
    if ((self = [super init])) {
        switch ( responseFormat ) {
            case CompareResponseFormatJSON:
                responseProcessor = nil;//[[YahooJSONResponse alloc] init];
                break;
            case CompareResponseFormatXML:
                responseProcessor = [[KakakuCompareResponse alloc] init];
                break;
            default:
                [NSException raise:@"ComapreResponseFormat unknown!" format:nil];
        }
		
    }
    return self;
}

- (id)init
{
    return [self initWithResponseFormat:CurrentCompareResponseFormat];
}

- (void)load:(TTURLRequestCachePolicy)cachePolicy more:(BOOL)more
{
    if (!itemId) {
        //TTLOG(@"No search terms specified. Cannot load the model resource.");
        return;
    }
    
    if (more){
		// do nothing
	}
    else
        [responseProcessor.objects removeAllObjects]; // Clear out data from previous request.
    
	NSString* strQuery = [NSString stringWithFormat:@"http://kakaku.com/item/%@/", itemId];
    TTURLRequest *request = [TTURLRequest requestWithURL:strQuery delegate:self];
    request.cachePolicy = cachePolicy;
    request.response = responseProcessor;
    request.httpMethod = @"GET";
    
    // Dispatch the request.
    [request send];
}

- (void)reset
{
    [super reset];
    [itemId release];
    itemId = nil;
    [[responseProcessor objects] removeAllObjects];
}

- (void)setItemId:(NSString *)theItemId
{
    if (![theItemId isEqualToString:itemId]) {
		[itemId release];
		itemId = [theItemId retain];
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
    [itemId release];
    [responseProcessor release];
    [super dealloc];
}


@end
