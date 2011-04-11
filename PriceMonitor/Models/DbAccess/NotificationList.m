//
//  NotificationList.m
//  PriceMonitor
//
//  Created by hubdog on 4/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NotificationList.h"
#import "PersistenceManager.h"


@implementation NotificationList
@synthesize itemArray;

static NotificationList *sharedList = nil;


+ (NotificationList *)notificationList
{
	@synchronized(self) {
		if (sharedList == nil) {
			[[self alloc] init]; // assignment not done here
			
		}
	}
	
	return sharedList;
}

+ (id)allocWithZone:(NSZone *)zone
{
	@synchronized(self) {
		if (sharedList == nil) {
            sharedList = [[super allocWithZone:zone] init];
			
			[sharedList loadFromDb];
			
			return sharedList;  // assignment and return on first allocation
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
	FMResultSet* rs = [mgr.database executeQuery:@"select * from NotificationList order by NotificationId"];
	NSMutableArray* items= [[[NSMutableArray alloc] init] autorelease]; 
	
	while ([rs next]) {
		NSString* item = [rs stringForColumn:@"notification"];
		[items addObject:item];		
	}
	[rs close];		 
	self.itemArray = items;
}

-(void)addNotification:(NSString*)notification{
	//return [[self.itemArray objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
	PersistenceManager * mgr = [PersistenceManager mgr];
	[mgr.database executeUpdate:@"insert into NotificationList (notification) values(?)", 
		notification];
	[self.itemArray addObject:notification];
}

-(void)clear{
	PersistenceManager * mgr = [PersistenceManager mgr];
	[mgr.database executeUpdate:@"delete from NotificationList"];
	[self.itemArray removeAllObjects];	
}

@end
