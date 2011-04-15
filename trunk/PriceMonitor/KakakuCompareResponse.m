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

	@try {
		NSString* htmlStr=[Utils cstringToShiftJis:data];
		
		ElementParser* parser = [[[ElementParser alloc] init] autorelease];
		DocumentRoot* root = [parser parseHTML: htmlStr];
		NSArray *prices = [root selectElements:@"td.alignR"];
		NSArray *shops  = [root selectElements:@"td.shopname a"];
		NSArray *comments = [root selectElements:@"td.alignL"];
		Element *category = [root selectElement:@"span.category"];	
		Element *spec = [root selectElement:@"div#specBox p"];
		NSArray *shopUrls  = [root selectElements:@"td.shopname a"];
		
		NSArray *payList = [root selectElements:@"ul.payList li img"];
		
//		if ([payList count]<3*[prices count]){
//			NSLog(@"%@:ng", htmlStr);
//		}
		
		totalObjectsAvailableOnServer = [prices count];
		// Now construct our domain-specific object.
		for (NSUInteger i = 0; i < totalObjectsAvailableOnServer; i++) {
			CompareResult *result = [[[CompareResult alloc] init] autorelease];
			Element* price = [prices objectAtIndex:i];
			Element* deliveryPrice = [[[price parent] childElements] objectAtIndex:2];
			Element* area = [[[price parent] childElements] objectAtIndex:4];
			Element* shopUrl = [shopUrls objectAtIndex:i];
			
			result.price = [[[price selectElement:@"p a"] contentsText] stringByConvertingHTMLToPlainText];
			result.deliveryPrice = [[deliveryPrice  contentsText] stringByConvertingHTMLToPlainText];
			result.shopName = [[[shops objectAtIndex:i] contentsText] stringByConvertingHTMLToPlainText];
			result.category = [[category contentsText] stringByConvertingHTMLToPlainText];
			if (spec && 0==i){
				result.spec = [[spec contentsText] stringByConvertingHTMLToPlainText];
			}
			
			if ([payList count]>0+3*i)
				result.payImg1 = [[payList objectAtIndex:0+3*i]  attribute:@"src"];
			if ([payList count]>1+3*i)
				result.payImg2 = [[payList objectAtIndex:1+3*i] attribute:@"src"];
			if ([payList count]>2+3*i)
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
	@catch (NSException * e) {
//		NSLog(@"%d %@",totalObjectsAvailableOnServer, e);

		return [NSError errorWithDomain:@"HTMLの解析は失敗しました" code:100 userInfo:nil];
	}
}

- (NSString *)format { return @"xml"; }

@end
