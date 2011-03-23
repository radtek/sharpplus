//
//  MonitorItem.h
//  PriceMonitor
//
//  Created by hubdog on 3/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    ConditionLesssEqual,//<=
    ConditionLess,//<
	ConditionLarge,//>
	ConditionLargeEqual,//>=
    ConditionDefault = ConditionLesssEqual
} MonitorCondition;

typedef enum{
	TimeHour,
	TimeDay,
	TimeDefault = TimeHour
} MonitorTime;

@interface MonitorItem : NSObject {
	NSInteger monitorId;
	NSString* itemId;
	NSString* name;
	NSInteger price;
	NSString* area;
	NSString* category;
	MonitorCondition condition;
	NSInteger time;
	MonitorTime timeType;
}

@property (nonatomic, assign) NSInteger monitorId;
@property (nonatomic, retain) NSString* itemId;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, assign) NSInteger price;
@property (nonatomic, retain) NSString *area;
@property (nonatomic, retain) NSString *category;
@property (nonatomic, assign) MonitorCondition condition;
@property (nonatomic, assign) NSInteger time;
@property (nonatomic, assign) MonitorTime timeType;

-(id) initWithItemId:(NSString*)_itemId;
-(void) saveToDb:(NSInteger)action;
-(void)delete;

@end
