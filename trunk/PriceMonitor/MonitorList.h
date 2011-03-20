//
//  MonitorList.h
//  PriceMonitor
//
//  Created by hubdog on 3/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MonitorList : NSObject {
	NSMutableArray* sectionArray;
	NSMutableArray* itemArray;
}

@property (nonatomic, retain) NSMutableArray* sectionArray;
@property (nonatomic, retain) NSMutableArray* itemArray;

+ (MonitorList *)monitorList;
-(void) loadFromDb;

@end
