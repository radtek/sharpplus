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
	
	self.database = db;
	
	//[db release];
}

- (void)dealloc {
    [_db close];
	[_db release];
    [super dealloc];
}

@end
