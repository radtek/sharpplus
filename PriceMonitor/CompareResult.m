//
//  CompareResult.m
//  PriceMonitor
//
//  Created by hubdog on 3/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CompareResult.h"


@implementation CompareResult

@synthesize price, deliveryPrice, shopName, shopArea, shopURL, hasStock, category,
			payImg1,payImg2, payImg3;

- (void)dealloc
{
    [price release];
    [deliveryPrice release];
	[shopName release];
    [shopArea release];
    [shopURL release];
    [hasStock release];
	[category release];
	[payImg1 release];
	[payImg2 release];
	[payImg3 release];
	
    [super dealloc];
}

@end
