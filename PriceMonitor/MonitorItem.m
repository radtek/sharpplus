//
//  MonitorItem.m
//  PriceMonitor
//
//  Created by hubdog on 3/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MonitorItem.h"


@implementation MonitorItem

@synthesize monitorId, itemId,price, name, area, category, condition, time, timeType;

- (void)dealloc
{
	[itemId release];
	[name release];
	[area release];
	[category release];
    [super dealloc];
}

@end