//
//  PersistenceManager.m
//  PriceMonitor
//
//  Created by hubdog on 1/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PersistenceManager.h"


@implementation PersistenceManager
@synthesize database = _db;

static PersistenceManager *sharedMgr = nil;

+ (PersistenceManager *)mgr
{
	@synchronized(self) {
		if (sharedMgr == nil) {
			[[self alloc] init]; // assignment not done here
			
		}
	}
	
	return sharedMgr;
}

+ (id)allocWithZone:(NSZone *)zone
{
	@synchronized(self) {
		if (sharedMgr == nil) {
            sharedMgr = [super allocWithZone:zone];
			
			[sharedMgr openDb];
			
			return sharedMgr;  // assignment and return on first allocation
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


-(NSString *)dbFilePath{
	NSArray* paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES); 
	NSString* path = [paths objectAtIndex:0];
	
	return [path stringByAppendingPathComponent:kDbFileName];
}


-(void) openDb{
	FMDatabase* db = [FMDatabase databaseWithPath:[self dbFilePath]];	
    if (![db open]) {
        NSAssert(0,@"failed to open database");	
        return ;
    }	
	
	//create table
	//[db executeUpdate:@"create table Settings if not exists (setting text primary key, value text)"];
	BOOL success = [db executeUpdate:@"create table if not exists Settings (setting text primary key, value text)"];
	if (!success){
		NSAssert(0, @"failed to create table");
		return ;
	}
	//create monitorlist table
	success &= [db executeUpdate:@"create table if not exists MonitorList ("
			   "ItemId integer primary key autoincrement,"
			   "Name varchar not null,"
			   "Price integer not null,"
			   "Area varchar,"
			   "Category varchar not null,"
			   "Condition integer not null,"
			   "MonitorTime integer not null,"
			   "TimeType integer not null)"];
	//insert test data
	success &= [db executeUpdate:@"insert or replace into MonitorList values(1, 'test', 1234, 'tokyo', 'other', 1,12,1)"];
	success &= [db executeUpdate:@"insert or replace into MonitorList values(2, 'test2', 12345, 'kanagawa', 'food', 2,10,0)"];
	success &= [db executeUpdate:@"insert or replace into MonitorList values(3, 'test3', 123456, 'yokohama', 'food', 3,5,0)"];
	
    if (!success){
	   NSLog([db lastErrorMessage]);
	   NSAssert(0, [db lastErrorMessage] );
	   return ;
    }
	
	self.database = db;
	
	//[db release];
}

- (void)dealloc {
    [_db close];
	[_db release];
    [super dealloc];
}

@end
