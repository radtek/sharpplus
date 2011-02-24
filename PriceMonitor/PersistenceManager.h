//
//  PersistenceManager.h
//  PriceMonitor
//
//  Created by hubdog on 1/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>
#import "FMDatabase.h"

#define kDbFileName @"data.sqlite3"

@interface PersistenceManager : NSObject {
	//sqlite3 * database;
	FMDatabase* _db;
}

@property (retain,nonatomic) FMDatabase* database;

-(NSString *) dbFilePath;
-(void) openDb;

+ (PersistenceManager *) mgr;

@end
