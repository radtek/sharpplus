
#import "Three20/Three20.h"
#import "SearchResultsModel.h"

@class URLModelResponse;

@interface KakakuSearchResultsModel : TTURLRequestModel <SearchResultsModel>
{
    URLModelResponse *responseProcessor;
    NSString *searchTerms;
	NSUInteger recordOffset;
}

// The designated initializer is defined in the SearchResultsModel protocol.

@end
