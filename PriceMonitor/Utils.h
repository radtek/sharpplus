//
//  Utils.h
//  PriceMonitor
//
//  Created by hubdog on 2/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Utils : NSObject {

}

+ (NSString*)dataToString:(NSData*)data;
+ (NSString*)cstringToString:(NSData*)data;
+ (NSString*)cstringToShiftJis:(NSData *)data;

+ (NSData*)stringToData:(NSString*)string;

+ (NSArray*)splitString:(NSString*)string separator:(NSString*)separator;
+ (NSString*)separatedText:(NSArray*)listStrings separator:(NSString*)separator;
+ (NSString*)intToCurrency:(NSUInteger)val;

+ (NSString *)trim:(NSString*)str;
+ (BOOL)isEmptyString:(NSString*)str;
+ (void)showAlert:(NSString*)title msg:(NSString*)msg;
+ (NSDate*)getLocalDateFromGregorianDate:(NSDate*)srcDate;
+ (NSString*)getCurrentDateString;

@end
