#import "KakakuXMLResponse.h"
#import "SearchResult.h"
#import "Utils.h"
#import "NSString+HTML.h"

@implementation KakakuXMLResponse

/////////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark TTURLResponse

- (NSError*)request:(TTURLRequest*)request processResponse:(NSHTTPURLResponse*)response data:(id)data
{
	
	// Parse the XML document.

	//NSString * s=@"<html><a href='http://aa'><strong>a</strong>bc</a></html>";
	//NSData* testData = [Utils stringToData:s];
	NSString* htmlStr=[Utils cstringToString:data];
	//NSString* htmlStr=[Utils bytesToString:data];
	
	ElementParser* parser = [[[ElementParser alloc] init] autorelease];
	DocumentRoot* root = [parser parseHTML: htmlStr];
	//use xpath to query result title
	//NSArray *elements = [root selectElements:@"a.title"];
	NSArray *images = [root selectElements:@"div.leftBox a img"];
	NSArray *prices = [root selectElements:@"div.rightBox p span.price"];
	
    
    //totalObjectsAvailableOnServer = [elements count];
    totalObjectsAvailableOnServer = [images count];
    // Now construct our domain-specific object.
    for (NSUInteger i = 0; i < totalObjectsAvailableOnServer; i++) {
        SearchResult *result = [[[SearchResult alloc] init] autorelease];
        result.title = [[images objectAtIndex:i] attribute:@"alt"];
        result.imageURL = [[images objectAtIndex:i] attribute:@"src"];
		result.detail = [[[prices objectAtIndex:i] contentsText] stringByConvertingHTMLToPlainText];
//        result.thumbnailURL = [[thumbnailURLs objectAtIndex:i] stringValue];
//        result.bigImageSize = CGSizeMake([[[bigImageWidths objectAtIndex:i] stringValue] intValue], 
//                                         [[[bigImageHeights objectAtIndex:i] stringValue] intValue]);
        [self.objects addObject:result];
    }
    return nil;
}

- (NSString *)format { return @"xml"; }

@end
