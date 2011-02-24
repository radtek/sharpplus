#import "SearchResult.h"


@implementation SearchResult

@synthesize title, imageURL, detail, detailURL, imageSize;

- (void)dealloc
{
    [title release];
    [imageURL release];
	[detail release];
    [detailURL release];
    [super dealloc];
}

@end
