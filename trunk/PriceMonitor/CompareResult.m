//
//  CompareResult.m
//  PriceMonitor
//
//  Created by hubdog on 3/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CompareResult.h"


@implementation CompareResult

@synthesize price, deliveryPrice, shopName, shopArea, shopURL, hasStock;

- (void)dealloc
{
    [price release];
    [deliveryPrice release];
	[shopName release];
    [shopArea release];
    [shopURL release];
    [hasStock release];
    [super dealloc];
}

@end
