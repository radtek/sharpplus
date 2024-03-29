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

+ (NSString *)trim:(NSString*)str {
	return [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

+ (BOOL)isEmptyString:(NSString*)str {
	return [[Utils trim:str] isEqualToString:@""];
}

+ (void)showAlert:(NSString*)title msg:(NSString*)msg{
	UIAlertView* alert = [[[UIAlertView alloc] initWithTitle:title
													 message:msg delegate:nil cancelButtonTitle:@"閉じる" otherButtonTitles: nil] autorelease];
	[alert show];	
}

+ (NSDate*)getLocalDateFromGregorianDate:(NSDate*)srcDate{
	NSCalendar* calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
	NSDateComponents *components = [[NSCalendar currentCalendar] 
									components:NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit
									fromDate:srcDate];
	
	NSLog(@"%d-%d-%d", [components year], [components month], [components day]);
	
	NSDateComponents *newComps = [[NSDateComponents alloc] init];
	
	[newComps setYear:[components year]];
	[newComps setMonth:[components month]];
	[newComps setDay:[components day]];
	[newComps setHour:[components hour]];
	[newComps setMinute:[components minute]];
	[newComps setSecond:[components second]];
	
	NSDate *date = [calendar dateFromComponents:newComps];
	[calendar release];
	[newComps release];
	return date;
}

+ (NSString*)getCurrentDateString{
	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	[formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
	
	//Optionally for time zone converstions
	[formatter setTimeZone:[NSTimeZone timeZoneWithName:@"UTC"]];
	NSCalendar* calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
	[formatter setCalendar:calendar];
	
	NSString *stringFromDate = [formatter stringFromDate:[NSDate date]];
	[calendar release];
	return stringFromDate;
}


@end
