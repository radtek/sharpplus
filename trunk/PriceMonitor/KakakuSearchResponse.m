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
	
	//NSLog(htmlStr);
	
	ElementParser* parser = [[[ElementParser alloc] init] autorelease];
	DocumentRoot* root = [parser parseHTML: htmlStr];
	//use xpath to query result title
	NSArray *images = [root selectElements:@"ImageUrl"];
	NSArray *prices = [root selectElements:@"LowestPrice"];
	NSArray *products = [root selectElements:@"ProductName"];
	NSArray *itemUrls = [root selectElements:@"ItemPageUrl"];
//	NSArray *categories = [root selectElements:@"CategoryName"];
    
    totalObjectsAvailableOnServer = [[[root selectElement:@"NumOfResult"] contentsText] intValue];
	// Now construct our domain-specific object.
    for (NSUInteger i = 0; i < [images count]; i++) {
        SearchResult *result = [[[SearchResult alloc] init] autorelease];
		Element* image = [images objectAtIndex:i];
		Element* price = [prices objectAtIndex:i];
		Element* product = [products objectAtIndex:i];
		Element* itemUrl = [itemUrls objectAtIndex:i];
//		Element* category = [categories objectAtIndex:i];
		
        result.title = [[product contentsText] stringByConvertingHTMLToPlainText];
        result.imageURL = [[image contentsText] stringByConvertingHTMLToPlainText];

		NSInteger val= [[[price contentsText] stringByConvertingHTMLToPlainText] intValue];
		
		result.detail = [Utils intToCurrency:val];
		result.detailURL = [[itemUrl contentsText] stringByConvertingHTMLToPlainText];
        [self.objects addObject:result];
    }
    return nil;
}

- (NSString *)format { return @"xml"; }

@end
