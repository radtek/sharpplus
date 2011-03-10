
#import "Three20/Three20.h"
#import "CompareResultsModel.h"

@class URLModelResponse;

@interface KakakuCompareResultsModel : TTURLRequestModel <CompareResultsModel>
{
    URLModelResponse *responseProcessor;
    NSString *itemId;
}

@property (nonatomic,retain) NSString* itemId;
// The designated initializer is defined in the SearchResultsModel protocol.

@end
