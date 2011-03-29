//
//  MonitorTableItem.m
//  PriceMonitor
//
//  Created by hubdog on 3/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MonitorTableItem.h"


@implementation MonitorTableItem

@synthesize prevPrice=_prevPrice, price=_price, currPrice=_currPrice, 
			checkTime=_checkTime, condition = _condition;

+(id)initItemWithMonitor:(MonitorItem*)monitor url:(NSString*)url
{
	MonitorTableItem* item = [[[MonitorTableItem alloc] init] autorelease];
	item.text = monitor.name;
	item.URL = url;	
	item.price= monitor.price;
	item.currPrice = monitor.currPrice;
	item.prevPrice = monitor.prevPrice;
	item.checkTime = monitor.checkTime;
	item.condition = monitor.condition;
	
	return item;
}

-(id)init{
	if (self=[super init]){
		_prevPrice = 0;
		_currPrice = 0;
		_price = 0;
		_checkTime = nil;
		_condition = ConditionLessEqual;
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
		//self.condition = [aDecoder decodeObjectForKey:@"condition"];
	}
}

-(void)encodeWithCoder:(NSCoder *)aCoder{
	[super encodeWithCoder:aCoder];
	[aCoder encodeObject:self.currPrice forKey:@"currPrice"];
	[aCoder encodeObject:self.prevPrice forKey:@"prevPrice"];
	[aCoder encodeObject:self.price forKey:@"price"];
	if (self.checkTime){
		[aCoder encodeObject:self.checkTime forKey:@"checkTime"];
	}
	//[aCoder encodeObject:self.condition forKey:@"condition"];
}

@end
