//
//  MonitorList.h
//  PriceMonitor
//
//  Created by hubdog on 3/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MonitorItem.h"

@interface MonitorList : NSObject {
	NSMutableArray* sectionArray;
	NSMutableArray* itemArray;
}

@property (nonatomic, retain) NSMutableArray* sectionArray;
@property (nonatomic, retain) NSMutableArray* itemArray;

+ (MonitorList *)monitorList;
-(void) loadFromDb;
-(MonitorItem*)getMonitorItem:(NSIndexPath*)indexPath;
-(void)deleteMonitorItem:(NSIndexPath*)indexPath;


@end
