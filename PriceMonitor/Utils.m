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
	NSString* str=[[NSString stringWithCString:[data bytes]] autorelease] ;
	
	return str;
}

+ (NSData*)stringToData:(NSString*)string{
	NSData* testData = [[string dataUsingEncoding:NSUTF8StringEncoding] autorelease];
	return testData;
}

@end
