#import "KakakuXMLResponse.h"
#import "SearchResult.h"

@implementation KakakuXMLResponse

/////////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark TTURLResponse

- (NSError*)request:(TTURLRequest*)request processResponse:(NSHTTPURLResponse*)response data:(id)data
{
	
	// Parse the XML document.
	//NSData *htmlData = [data dataUsingEncoding:NSUTF8StringEncoding];
	NSError* error;
	NSData *htmlData = [[NSString stringWithContentsOfURL:[NSURL 
														   URLWithString: @"http://www.sharpplus.com/"]
												 encoding:NSASCIIStringEncoding
													error:&error ]
						dataUsingEncoding:NSUTF8StringEncoding];
	
	TFHpple *parser = [[TFHpple alloc] initWithHTMLData:htmlData];
	NSArray *elements = [parser search:@"//title"];
    
    totalObjectsAvailableOnServer = [elements count];
    // Now construct our domain-specific object.
    for (NSUInteger i = 0; i < totalObjectsAvailableOnServer; i++) {
        SearchResult *result = [[[SearchResult alloc] init] autorelease];
        result.title = [[elements objectAtIndex:i] content];
//        result.bigImageURL = [[bigImageURLs objectAtIndex:i] stringValue];
//        result.thumbnailURL = [[thumbnailURLs objectAtIndex:i] stringValue];
//        result.bigImageSize = CGSizeMake([[[bigImageWidths objectAtIndex:i] stringValue] intValue], 
//                                         [[[bigImageHeights objectAtIndex:i] stringValue] intValue]);
        [self.objects addObject:result];
    }
	[parser release];
    return nil;
}

- (NSString *)format { return @"xml"; }

@end
