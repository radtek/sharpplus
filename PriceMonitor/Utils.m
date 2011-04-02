//
//  Utils.m
//  PriceMonitor
//
//  Created by hubdog on 2/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Utils.h"


@implementation Utils

+ (NSString*)dataToString:(NSData*)data{
	NSString* str=[[[NSString alloc] initWithData:data
						encoding:NSUTF8StringEncoding] autorelease];
	
	return str;
}

+ (NSString*)cstringToString:(NSData*)data{
//	NSString* str=[NSString stringWithCString:[data bytes] encoding:NSShiftJISStringEncoding];
	NSString* str=[NSString stringWithCString:[data bytes] encoding:NSUTF8StringEncoding];
	
	return str;
}

+ (NSString*)cstringToShiftJis:(NSData*)data{
	NSString* str=[NSString stringWithCString:[data bytes] encoding:NSShiftJISStringEncoding];
	//NSString* str=[NSString stringWithCString:[data bytes] encoding:NSUTF8StringEncoding];
	
	return str;
}

+ (NSData*)stringToData:(NSString*)string{
	NSData* testData = [string dataUsingEncoding:NSUTF8StringEncoding] ;
	return testData;
}

+ (NSArray*)splitString:(NSString*)string separator:(NSString*)separator{
	NSArray *listItems = [string componentsSeparatedByString:separator] ;
	return listItems;
}

+ (NSString*)separatedText:(NSArray*)listStrings separator:(NSString*)separator{
	int i;
	NSMutableString* str=nil;
	for (i = 0; i < [listStrings count]; i++) {
		if (i==0)
			str= [[NSMutableString alloc] initWithString:[listStrings objectAtIndex:i]] ;	
		else 
			[str appendFormat:@"%@%@", separator, [listStrings objectAtIndex:i]];
	}
	[str autorelease];
	
	return str;
}

+ (NSString*)intToCurrency:(NSUInteger)val{
  NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
  formatter.numberStyle = NSNumberFormatterCurrencyStyle;
  NSString *strMoney = [formatter stringFromNumber:[NSNumber numberWithInt:val]];
  [formatter release];
  return strMoney;
}

@end
