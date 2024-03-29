//
//  MonitorItem.h
//  PriceMonitor
//
//  Created by hubdog on 3/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DIOSNode.h"

typedef enum {
    ConditionLessEqual,//<=
    ConditionLess,//<
	ConditionLarge,//>
	ConditionLargeEqual,//>=
    ConditionDefault = ConditionLessEqual
} MonitorCondition;

typedef enum{
	TimeHalfDay = 12,
	TimeDay = 24,
	TimeTwoDay = 48,
	TimeThreeDay = 72,
	TimeWeek = 168,
	TimeDefault = TimeHalfDay
} MonitorTime;

@interface MonitorItem : NSObject {
	NSInteger monitorId;
	NSString* itemId;
	NSString* nodeId;
	NSString* name;
	NSUInteger price;
	NSString* area;
	NSString* category;
	MonitorCondition condition;
	MonitorTime timeType;
	
	//
	NSUInteger currPrice;
	NSUInteger prevPrice;
	NSDate* checkTime;
}

@property (nonatomic, assign) NSInteger monitorId;
@property (nonatomic, retain) NSString* itemId;
@property (nonatomic, retain) NSString* nodeId;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, assign) NSUInteger price;
@property (nonatomic, retain) NSString *area;
@property (nonatomic, retain) NSString *category;
@property (nonatomic, assign) MonitorCondition condition;
@property (nonatomic, assign) MonitorTime timeType;

@property (nonatomic, assign) NSUInteger currPrice;
@property (nonatomic, assign) NSUInteger prevPrice;
@property (nonatomic, retain) NSDate* checkTime;

-(id) initWithItemId:(NSString*)_itemId;
-(void) saveToDb:(NSInteger)action;
-(void) updatePrice;
-(void)delete;
-(void) setCCKField:(NSMutableDictionary*)node field:(NSString*)field value:(NSString*) value;


@end
