//
//  MonitorList.m
//  PriceMonitor
//
//  Created by hubdog on 3/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MonitorList.h"
#import "MonitorItem.h"
#import "PersistenceManager.h"


@implementation MonitorList

@synthesize sectionArray, itemArray;

static MonitorList *sharedMonitorList = nil;


+ (MonitorList *)monitorList
{
	@synchronized(self) {
		if (sharedMonitorList == nil) {
			[[self alloc] init]; // assignment not done here
			
		}
	}
	
	return sharedMonitorList;
}

+ (id)allocWithZone:(NSZone *)zone
{
	@synchronized(self) {
		if (sharedMonitorList == nil) {
            sharedMonitorList = [[super allocWithZone:zone] init];
			
			[sharedMonitorList loadFromDb];
			
			return sharedMonitorList;  // assignment and return on first allocation
		}
	}
	
	return nil; //on subsequent allocation attempts return nil
}

- (id)copyWithZone:(NSZone *)zone
{
	return self;
}

- (id)retain
{
	return self;
}

- (unsigned)retainCount
{
	return UINT_MAX;  //denotes an object that cannot be released
}

- (void)release
{
	//do nothing
}

- (id)autorelease
{
	return self;
}

-(void) loadFromDb{
	PersistenceManager * mgr = [PersistenceManager mgr];
	FMResultSet* rs = [mgr.database executeQuery:@"select * from MonitorList order by category, itemId"];
    NSMutableArray* sections = [[NSMutableArray alloc] init];
	NSMutableArray* items= [[NSMutableArray alloc] init]; 
	NSMutableArray* detailArray = NULL;
	
	while ([rs next]) {
		MonitorItem* item = [[MonitorItem alloc] init];
		
		item.itemId = [rs intForColumn:@"ItemId"];
		item.name = [rs stringForColumn:@"Name"];
		item.price = [rs intForColumn:@"Price"];
		NSString* category = [rs stringForColumn:@"Category"];
		item.category = category;
		item.area = [rs stringForColumn:@"Area"];
		item.condition = [rs intForColumn:@"Condition"];
		item.time = [rs intForColumn:@"MonitorTime"];
		item.timeType = [rs intForColumn:@"TimeType"];
		
		if (!([sections containsObject:category])){
			detailArray = [[NSMutableArray alloc] init];
			
			[sections addObject:category];
			[items addObject:detailArray];		
		}
		[detailArray addObject:item];			
	}
	[rs close];		 
	self.sectionArray = sections;
	self.itemArray = items;
}

@end
