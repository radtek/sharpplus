//
//  MonitorItem.m
//  PriceMonitor
//
//  Created by hubdog on 3/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MonitorItem.h"
#import "PersistenceManager.h"


@implementation MonitorItem

@synthesize monitorId, itemId,price, name, area, category, condition, time, timeType, currPrice, prevPrice, checkTime;

-(id) initWithItemId:(NSString*)_itemId{
	[super init];
	PersistenceManager * mgr = [PersistenceManager mgr];
	FMResultSet* rs = [mgr.database executeQuery:[NSString stringWithFormat:
						@"select * from MonitorList where itemId='%@'", 
						_itemId
					]];
	if (![rs next]){
		NSLog([mgr.database lastErrorMessage]);
		return nil;
	}

	self.monitorId = [rs intForColumn:@"MonitorId"];
	self.itemId = [rs stringForColumn:@"ItemId"];
	self.name = [rs stringForColumn:@"Name"];
	self.price = [rs intForColumn:@"Price"];
	NSString* category = [rs stringForColumn:@"Category"];
	self.category = category;
	self.area = [rs stringForColumn:@"Area"];
	self.condition = [rs intForColumn:@"Condition"];
	self.time = [rs intForColumn:@"MonitorTime"];
	self.timeType = [rs intForColumn:@"TimeType"];
	
	self.currPrice = [rs intForColumn:@"CurrPrice"];
	self.prevPrice = [rs intForColumn:@"PrevPrice"];
	self.checkTime = [rs dateForColumn:@"CheckTime"];
		
	[rs close];	
	return self;
}

-(void) saveToDb:(NSInteger) action{
	
	PersistenceManager * mgr = [PersistenceManager mgr];
	BOOL success;
	if (action == 1){// edit
		success=[mgr.database executeUpdate:
				 @"update MonitorList set price=? , category=?, condition=?, MonitorTime=? , timeType=?,"
				 "CurrPrice=?, CheckTime=? "
				  " where monitorId=?", 
		 [NSNumber numberWithInt:self.price],
	     self.category, 
		 [NSNumber numberWithInt:self.condition],
		 [NSNumber numberWithInt:self.time],
		 [NSNumber numberWithInt:self.timeType],
		 [NSNumber numberWithInt:self.currPrice],
		 self.checkTime,
	     [NSNumber numberWithInt:self.monitorId]];
    }else {
		success=[mgr.database executeUpdate:
				 @"insert into MonitorList (itemId, name, price, category, condition, MonitorTime, timeType, CurrPrice, PrevPrice, CheckTime)"
				 " values(?,?, ?, ?, ?,?,?, ?, ?, ?)",
				 self.itemId,
				 self.name,
				 [NSNumber numberWithInt:self.price],
				 self.category, 
				 [NSNumber numberWithInt:self.condition],
				 [NSNumber numberWithInt:self.time],
				 [NSNumber numberWithInt:self.timeType],
				 [NSNumber numberWithInt:self.currPrice],
				 [NSNumber numberWithInt:self.prevPrice],
				 self.checkTime];
	}

	if (!success){
		NSLog([mgr.database lastErrorMessage]);
	}
}

-(void)delete{
	//delete from db
	PersistenceManager * mgr = [PersistenceManager mgr];
	BOOL success = [mgr.database executeUpdate:@"delete from MonitorList where monitorId=?",
					[NSNumber numberWithInt:self.monitorId]];
	if (!success){
		NSLog([mgr.database lastErrorMessage]);
	}
}

- (void)dealloc
{
	[checkTime release];
	[itemId release];
	[name release];
	[area release];
	[category release];
    [super dealloc];
}

@end
