#import "KakakuSearchResponse.h"
#import "SearchResult.h"
#import "Utils.h"
#import "NSString+HTML.h"
#import "Element.h"

@implementation KakakuSearchResponse

/////////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark TTURLResponse

- (NSError*)request:(TTURLRequest*)request processResponse:(NSHTTPURLResponse*)response data:(id)data
{
	
	// Parse the XML document.

	NSString* htmlStr=[Utils cstringToString:data];
	
	ElementParser* parser = [[[ElementParser alloc] init] autorelease];
	DocumentRoot* root = [parser parseHTML: htmlStr];
	//use xpath to query result title
	NSArray *images = [root selectElements:@"div.leftBox a img"];
	NSArray *prices = [root selectElements:@"div.rightBox p span.price"];
	
    
    //totalObjectsAvailableOnServer = [elements count];
    totalObjectsAvailableOnServer = [images count];
    // Now construct our domain-specific object.
    for (NSUInteger i = 0; i < totalObjectsAvailableOnServer; i++) {
        SearchResult *result = [[[SearchResult alloc] init] autorelease];
		Element* image = [images objectAtIndex:i];
		Element* link = [image parent];
		
        result.title = [image attribute:@"alt"];
        result.imageURL = [image attribute:@"src"];

		result.detail = [[[prices objectAtIndex:i] contentsText] stringByConvertingHTMLToPlainText];
		result.detailURL = [link attribute:@"href"];
        [self.objects addObject:result];
    }
    return nil;
}

- (NSString *)format { return @"xml"; }

@end
