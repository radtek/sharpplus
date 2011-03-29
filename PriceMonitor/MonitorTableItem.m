//
//  MonitorTableItem.m
//  PriceMonitor
//
//  Created by hubdog on 3/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MonitorTableItem.h"


@implementation MonitorTableItem

@synthesize prevPrice=_prevPrice, price=_price, currPrice=_currPrice, checkTime=_checkTime;

+(id)initItemWithMonitor:(MonitorItem*)monitor
{
	MonitorTableItem* item = [[[MonitorTableItem alloc] init] autorelease];
	item.text = monitor.name;
	//item.URL = [NSString stringWithFormat:@"http://s.kakaku.com%@", shop.shopURL];	
	item.price= monitor.price;
	
//NSInteger monitorId;
//NSString* itemId;
//MonitorCondition condition;
//NSInteger time;
//MonitorTime timeType;
	
	return item;
}

-(id)init{
	if (self=[super init]){
		_prevPrice = 0;
		_currPrice = 0;
		_price = 0;
		_checkTime = nil;
	}
	
	return self;
}

-(void)dealloc{
	TT_RELEASE_SAFELY(_checkTime);
	[super dealloc];
}

-(id)initWithCoder:(NSCoder *)aDecoder{
	if (self=[super initWithCoder:aDecoder]){
		self.price = [aDecoder decodeObjectForKey:@"price"];
		self.currPrice = [aDecoder decodeObjectForKey:@"currPrice"];
		self.prevPrice = [aDecoder decodeObjectForKey:@"prevPrice"];
		self.checkTime = [aDecoder decodeObjectForKey:@"checkTime"];
	}
}

-(void)encodeWithCoder:(NSCoder *)aCoder{
	[super encodeWithCoder:aCoder];
	if (self.currPrice){
		[aCoder encodeObject:self.currPrice forKey:@"currPrice"];
	}
	if (self.prevPrice){
		[aCoder encodeObject:self.prevPrice forKey:@"prevPrice"];
	}
	if (self.price){
		[aCoder encodeObject:self.price forKey:@"price"];
	}
	if (self.checkTime){
		[aCoder encodeObject:self.checkTime forKey:@"checkTime"];
	}
}

@end
