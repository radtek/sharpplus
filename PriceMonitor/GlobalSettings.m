//
//  GlobalSettings.m
//  PriceMonitor
//
//  Created by hubdog on 1/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GlobalSettings.h"
#import "FMDatabase.h"


@implementation GlobalSettings

@synthesize displayCount;
@synthesize displayOrder;

static GlobalSettings *sharedSettings = nil;

+ (GlobalSettings *)settings
{
	@synchronized(self) {
		if (sharedSettings == nil) {
			[[self alloc] init]; // assignment not done here
			
		}
	}
	
	return sharedSettings;
}

+ (id)allocWithZone:(NSZone *)zone
{
	@synchronized(self) {
		if (sharedSettings == nil) {
            sharedSettings = [super allocWithZone:zone];
			
			[sharedSettings loadFromDb];
			
			return sharedSettings;  // assignment and return on first allocation
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
	//load settings from db
	PersistenceManager * mgr = [PersistenceManager mgr];
	FMResultSet* rs = [mgr.database executeQuery:@"select * from Settings"];
	while ([rs next]) {
		NSString* setting = [rs stringForColumnIndex:0];
		if ([setting isEqualToString:kDisplayOrder]){
			self.displayOrder = [rs intForColumnIndex:1];
		}
		
		if ([setting isEqualToString:kDisplayCount]){
			self.displayCount = [rs intForColumnIndex:1];
		}
	}
	[rs close];		 
	
}

-(void) saveToDb{
	//save settings to db
	PersistenceManager * mgr = [PersistenceManager mgr];	
	[mgr.database executeUpdate:@"insert or replace into Settings values(?, ?)", 
										kDisplayOrder, 
										[NSNumber numberWithInt:displayOrder]];
	[mgr.database executeUpdate:@"insert or replace into Settings values(?, ?)", 
										kDisplayCount, 
										[NSNumber numberWithInt:displayCount]];
    if ([mgr.database hadError]) {
        NSLog(@"Err %d: %@", [mgr.database lastErrorCode], [mgr.database lastErrorMessage]);
    }	
	
}
		
@end
