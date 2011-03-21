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
	NSArray *prices = [root selectElements:@"p.fontPrice a"];
	NSArray *shops  = [root selectElements:@"td.shopname a"];
	
	Element * category = [root selectElement:@"span.category"];	
    
    totalObjectsAvailableOnServer = [prices count];
    // Now construct our domain-specific object.
    for (NSUInteger i = 0; i < totalObjectsAvailableOnServer; i++) {
        CompareResult *result = [[[CompareResult alloc] init] autorelease];
				
        result.price = [[[prices objectAtIndex:i] contentsText] stringByConvertingHTMLToPlainText];
        result.shopName = [[[shops objectAtIndex:i] contentsText] stringByConvertingHTMLToPlainText];
		result.category = [[category contentsText] stringByConvertingHTMLToPlainText];

        [self.objects addObject:result];
    }
    return nil;
}

- (NSString *)format { return @"xml"; }

@end
