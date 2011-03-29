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
	NSDate* _checkTime;
	
	MonitorCondition _condition;
	
}

@property (nonatomic,assign) NSUInteger price;
@property (nonatomic,assign) NSUInteger prevPrice;
@property (nonatomic,assign) NSUInteger currPrice;
@property (nonatomic,copy)   NSDate*  checkTime;
@property (nonatomic,assign) MonitorCondition condition;


+(id)initItemWithMonitor:(MonitorItem*)monitor url:(NSString*)url;

@end

