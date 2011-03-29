//
//  MonitorTableItem.h
//  PriceMonitor
//
//  Created by hubdog on 3/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Three20/Three20.h"
#import "MonitorItem.h"


@interface MonitorTableItem : TTTableTextItem {
	NSUInteger _prevPrice;
	NSUInteger _currPrice;
	NSUInteger _price;
	NSString* _checkTime;
}

@property (nonatomic,assign) NSUInteger price;
@property (nonatomic,assign) NSUInteger prevPrice;
@property (nonatomic,assign) NSUInteger currPrice;
@property (nonatomic,copy)   NSString*  checkTime;


+(id)initItemWithMonitor:(MonitorItem*)monitor;

@end

