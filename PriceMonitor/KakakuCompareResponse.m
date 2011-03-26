#import "KakakuCompareResponse.h"
#import "CompareResult.h"
#import "Utils.h"
#import "NSString+HTML.h"
#import "Element.h"

@implementation KakakuCompareResponse

/////////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark TTURLResponse

- (NSError*)request:(TTURLRequest*)request processResponse:(NSHTTPURLResponse*)response data:(id)data
{
	
	// Parse the XML document.

	NSString* htmlStr=[Utils cstringToString:data];
	
	ElementParser* parser = [[[ElementParser alloc] init] autorelease];
	DocumentRoot* root = [parser parseHTML: htmlStr];
	NSArray *prices = [root selectElements:@"td.alignR"];
	NSArray *shops  = [root selectElements:@"td.shopname p.wordwrapShop a"];
	NSArray *comments = [root selectElements:@"td.alignL"];
	Element *category = [root selectElement:@"span.category"];	
	NSArray *shopUrls  = [root selectElements:@"div.shopInfoBtn a"];
	
	NSArray *payList = [root selectElements:@"ul.payList li img"];
    
    totalObjectsAvailableOnServer = [prices count];
    // Now construct our domain-specific object.
    for (NSUInteger i = 0; i < totalObjectsAvailableOnServer; i++) {
        CompareResult *result = [[[CompareResult alloc] init] autorelease];
		Element* price = [prices objectAtIndex:i];
		Element* deliveryPrice = [[[price parent] childElements] objectAtIndex:2];
		Element* area = [[[price parent] childElements] objectAtIndex:4];
		Element* shopUrl = [shopUrls objectAtIndex:i];
		
        result.price = [[[price selectElement:@"p a"] contentsText] stringByConvertingHTMLToPlainText];
		result.deliveryPrice = [[[deliveryPrice selectElement:@"p a"] contentsText] stringByConvertingHTMLToPlainText];
        result.shopName = [[[shops objectAtIndex:i] contentsText] stringByConvertingHTMLToPlainText];
		result.category = [[category contentsText] stringByConvertingHTMLToPlainText];
		
		result.payImg1 = [[payList objectAtIndex:0+3*i]  attribute:@"src"];
		result.payImg2 = [[payList objectAtIndex:1+3*i] attribute:@"src"];
		result.payImg3 = [[payList objectAtIndex:2+3*i] attribute:@"src"];
		result.shopArea = [[[area selectElement:@"a"] contentsText] stringByConvertingHTMLToPlainText];
		result.shopURL = [shopUrl attribute:@"href"];
		
		Element* comment = [[comments objectAtIndex:i] selectElement:@"p.font11"];
		if (comment){
			result.comment = [[comment contentsText] stringByConvertingHTMLToPlainText];
		}

        [self.objects addObject:result];
    }
    return nil;
}

- (NSString *)format { return @"xml"; }

@end
