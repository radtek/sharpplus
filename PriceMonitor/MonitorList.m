//
//  MonitorList.m
//  PriceMonitor
//
//  Created by hubdog on 3/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MonitorList.h"
#import "PersistenceManager.h"
#import "PriceMonitorAppDelegate.h"
#import "Utils.h"


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
	PriceMonitorAppDelegate* delegate = (PriceMonitorAppDelegate*)[[UIApplication sharedApplication] delegate];
	
	
	PersistenceManager * mgr = [PersistenceManager mgr];
	FMResultSet* rs = [mgr.database executeQuery:@"select * from MonitorList order by category, monitorId"];
    NSMutableArray* sections = [[[NSMutableArray alloc] init] autorelease];
	NSMutableArray* items= [[[NSMutableArray alloc] init] autorelease]; 
	NSMutableArray* detailArray = NULL;
	
	while ([rs next]) {
		MonitorItem* item = [[[MonitorItem alloc] init] autorelease];

		item.monitorId = [rs intForColumn:@"MonitorId"];
		item.itemId = [rs stringForColumn:@"ItemId"];
		item.nodeId = [rs stringForColumn:@"NodeId"];
		item.name = [rs stringForColumn:@"Name"];
		item.price = [rs intForColumn:@"Price"];
		NSString* category = [rs stringForColumn:@"Category"];
		item.category = category;
		item.area = [rs stringForColumn:@"Area"];
		item.condition = [rs intForColumn:@"Condition"];
		item.timeType = [rs intForColumn:@"TimeType"];
		item.currPrice = [rs intForColumn:@"CurrPrice"];
		item.prevPrice = [rs intForColumn:@"PrevPrice"];
		item.checkTime = [rs dateForColumn:@"CheckTime"];
		
		if (delegate.updateMonitor){
			//update currPrice from drupal
			DIOSNode *node = [[DIOSNode alloc] initWithSession:delegate.session];
			[node nodeGet:item.nodeId];
			NSLog(@"%@", node.connResult);
			NSDictionary* nodeData = [node.connResult objectForKey:@"#data"];
			id value = [[[nodeData valueForKey:@"field_curr_price"] objectAtIndex:0] valueForKey:@"value"];
			item.currPrice = [value intValue];
			value = [[[nodeData valueForKey:@"field_check_time"] objectAtIndex:0] valueForKey:@"value"];
			//convert string to date
			NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
			[dateFormat setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
			NSDate *date = [dateFormat dateFromString:value];  
			[dateFormat release];
			item.checkTime = [Utils getLocalDateFromGregorianDate:date];
		    //update database
			[item updatePrice];
			[node release];			
		}
		
		if (!([sections containsObject:category])){
			detailArray = [[[NSMutableArray alloc] init] autorelease];
			
			[sections addObject:category];
			[items addObject:detailArray];		
		}
		[detailArray addObject:item];			
	}
	[rs close];		 
	self.sectionArray = sections;
	self.itemArray = items;
	
	delegate.updateMonitor = false;
}

-(MonitorItem*)getMonitorItem:(NSIndexPath*)indexPath{
	return [[self.itemArray objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
}

-(MonitorItem*)deleteMonitorItem:(NSIndexPath*)indexPath{
	MonitorItem* item= [[self.itemArray objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
	[item delete];
	//remove from monitor list
	NSMutableArray* arr = [self.itemArray objectAtIndex:indexPath.section];
	[arr removeObjectAtIndex:indexPath.row];
	if (![arr count]){
		[self.itemArray removeObjectAtIndex:indexPath.section];
		[self.sectionArray removeObjectAtIndex:indexPath.section];
	}
}
@end
