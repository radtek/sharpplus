//
//  MonitorItem.m
//  PriceMonitor
//
//  Created by hubdog on 3/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MonitorItem.h"
#import "PersistenceManager.h"

#import "PriceMonitorAppDelegate.h"


@implementation MonitorItem

@synthesize monitorId, itemId, nodeId, price, name, area, category, condition, 
			timeType, currPrice, prevPrice, checkTime;

-(id) initWithItemId:(NSString*)_itemId{
	[super init];
	PersistenceManager * mgr = [PersistenceManager mgr];
	FMResultSet* rs = [mgr.database executeQuery:[NSString stringWithFormat:
						@"select * from MonitorList where itemId='%@'", 
						_itemId
					]];
	if (![rs next]){
		NSLog([mgr.database lastErrorMessage]);
		return nil;
	}

	self.monitorId = [rs intForColumn:@"MonitorId"];
	self.itemId = [rs stringForColumn:@"ItemId"];
	self.nodeId = [rs stringForColumn:@"NodeId"];
	self.name = [rs stringForColumn:@"Name"];
	self.price = [rs intForColumn:@"Price"];
	NSString* category = [rs stringForColumn:@"Category"];
	self.category = category;
	self.area = [rs stringForColumn:@"Area"];
	self.condition = [rs intForColumn:@"Condition"];
	self.timeType = [rs intForColumn:@"TimeType"];
	
	self.currPrice = [rs intForColumn:@"CurrPrice"];
	self.prevPrice = [rs intForColumn:@"PrevPrice"];
	self.checkTime = [rs dateForColumn:@"CheckTime"];
		
	[rs close];	
	return self;
}

-(void) setCCKField:(NSMutableDictionary*)node field:(NSString*)field value:(NSString*) value{
	NSDictionary *fieldValue = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:value, nil] forKeys:[NSArray arrayWithObjects:@"value", nil]];
	NSArray *fieldArray = [NSArray arrayWithObject:fieldValue];
	[node setObject:fieldArray forKey:field];
}

- (void) displayDebugDIOS:(id)aDIOSConnect {
	NSLog([aDIOSConnect responseStatusMessage]);
	if([aDIOSConnect connResult] == nil) {
		if([aDIOSConnect respondsToSelector:@selector(error)]) {
			//[responseView setText:]; 
			NSLog([NSString stringWithFormat:@"%@", [aDIOSConnect error]]);
		}
	} else {
		NSLog([NSString stringWithFormat:@"%@", [aDIOSConnect connResult]]);
	}
}

-(void) updatePrice{
	PersistenceManager * mgr = [PersistenceManager mgr];
	
	BOOL success;
	success=[mgr.database executeUpdate:
			 @"update MonitorList set CurrPrice=?, CheckTime=? "
			 " where monitorId=?", 
			 [NSNumber numberWithInt:self.currPrice],
			 self.checkTime,
			 [NSNumber numberWithInt:self.monitorId]];
	if (!success){
		NSLog([mgr.database lastErrorMessage]);
	}
	
}

-(void) saveToDb:(NSInteger) action{
	
	PersistenceManager * mgr = [PersistenceManager mgr];

	BOOL success;
	PriceMonitorAppDelegate* delegate = (PriceMonitorAppDelegate*)[[UIApplication sharedApplication] delegate];
	
	if (action == 1){// edit
		success=[mgr.database executeUpdate:
				 @"update MonitorList set price=? , category=?, condition=?, timeType=?,"
				 "CurrPrice=?, CheckTime=? "
				  " where monitorId=?", 
		 [NSNumber numberWithInt:self.price],
	     self.category, 
		 [NSNumber numberWithInt:self.condition],
		 [NSNumber numberWithInt:self.timeType],
		 [NSNumber numberWithInt:self.currPrice],
		 self.checkTime,
	     [NSNumber numberWithInt:self.monitorId]];
		
		//update it to our drupal cck table
		//save it to our drupal cck table
		DIOSNode *node = [[DIOSNode alloc] initWithSession:[delegate session]];
		NSMutableDictionary *nodeData = [[NSMutableDictionary alloc] init];
		
		//Price
		[self setCCKField:nodeData field:@"field_monitor_price" value:[NSString stringWithFormat:@"%d", self.price]];
		//Area
		//[self setCCKField:nodeData field:@"field_monitor_area" value:self.area];
		//Condition
		[self setCCKField:nodeData field:@"field_monitor_condition" value:[NSString stringWithFormat:@"%d", self.condition]];
		//Monitor Time Type
		[self setCCKField:nodeData field:@"field_time_type" value:[NSString stringWithFormat:@"%d", self.timeType]];
		//Monitor Current Price
		[self setCCKField:nodeData field:@"field_curr_price" value:[NSString stringWithFormat:@"%d", self.currPrice]];
		//Monitor Check Time
		[self setCCKField:nodeData field:@"field_check_time" value:@"now"];
		[nodeData setObject:self.nodeId forKey:@"nid"];
		
		[nodeData setObject:@"now" forKey:@"date"];
		if ([[[[delegate session] userInfo] objectForKey:@"uid"] isEqualToNumber:[NSNumber numberWithInt:0]]) {
			[nodeData setObject:@"" forKey:@"name"];
		} else if([[delegate session] userInfo] == nil){
			[nodeData setObject:@"" forKey:@"name"];
		} else {
			[nodeData setObject:[[[delegate session] userInfo] objectForKey:@"name"] forKey:@"name"];
		}
		[node nodeSave:nodeData];
		[self displayDebugDIOS:node];
		[node release];		
    }else {
		//save it to our drupal cck table
		DIOSNode *node = [[DIOSNode alloc] initWithSession:[delegate session]];
		NSMutableDictionary *nodeData = [[NSMutableDictionary alloc] init];
		
		//ItemId
		[self setCCKField:nodeData field:@"field_itemid" value:self.itemId];
		//Price
		[self setCCKField:nodeData field:@"field_monitor_price" value:[NSString stringWithFormat:@"%d", self.price]];
		//Area
		//[self setCCKField:nodeData field:@"field_monitor_area" value:self.area];
		//Condition
		[self setCCKField:nodeData field:@"field_monitor_condition" value:[NSString stringWithFormat:@"%d", self.condition]];
		//Monitor Time Type
		[self setCCKField:nodeData field:@"field_time_type" value:[NSString stringWithFormat:@"%d", self.timeType]];
		//Monitor Current Price
		[self setCCKField:nodeData field:@"field_curr_price" value:[NSString stringWithFormat:@"%d", self.currPrice]];
		//Monitor Check Time
		[self setCCKField:nodeData field:@"field_check_time" value:@"now"];
		//Monitor Device Token
		[self setCCKField:nodeData field:@"field_device_token" value:[delegate deviceToken]];
		
		[nodeData setObject:@"monitor" forKey:@"type"];
		[nodeData setObject:self.name forKey:@"title"];
		
		[nodeData setObject:@"now" forKey:@"date"];
		[nodeData setObject:@"1" forKey:@"status"];
		if ([[[[delegate session] userInfo] objectForKey:@"uid"] isEqualToNumber:[NSNumber numberWithInt:0]]) {
			[nodeData setObject:@"" forKey:@"name"];
		} else if([[delegate session] userInfo] == nil){
			[nodeData setObject:@"" forKey:@"name"];
		} else {
			[nodeData setObject:[[[delegate session] userInfo] objectForKey:@"name"] forKey:@"name"];
		}
		[node nodeSave:nodeData];
		[self displayDebugDIOS:node];
		//save to db
		id nid = [[node connResult] objectForKey:@"#data"];
		self.nodeId = [NSString stringWithFormat:@"%@",nid];
		success=[mgr.database executeUpdate:
				 @"insert into MonitorList (itemId, NodeId, name, price, category, condition, timeType, CurrPrice, PrevPrice, CheckTime)"
				 " values(?,?,?, ?, ?,?,?, ?, ?, ?)",
				 self.itemId,
				 self.nodeId,
				 self.name,
				 [NSNumber numberWithInt:self.price],
				 self.category, 
				 [NSNumber numberWithInt:self.condition],
				 [NSNumber numberWithInt:self.timeType],
				 [NSNumber numberWithInt:self.currPrice],
				 [NSNumber numberWithInt:self.prevPrice],
				 self.checkTime];
		[node release];
	}

	if (!success){
		NSLog([mgr.database lastErrorMessage]);
	}
}



-(void)delete{
	//delete from db
	PersistenceManager * mgr = [PersistenceManager mgr];
	PriceMonitorAppDelegate* delegate = (PriceMonitorAppDelegate*)[[UIApplication sharedApplication] delegate];
	
	BOOL success = [mgr.database executeUpdate:@"delete from MonitorList where monitorId=?",
					[NSNumber numberWithInt:self.monitorId]];
	
	//delete the record remotely
	DIOSNode *node = [[DIOSNode alloc] initWithSession:[delegate session]];
	[node nodeDelete:self.nodeId];
	[self displayDebugDIOS:node];
	[node release];  	
	if (!success){
		NSLog([mgr.database lastErrorMessage]);
	}
}

- (void)dealloc
{
	[checkTime release];
	[itemId release];
	[name release];
	[area release];
	[category release];
    [super dealloc];
}

@end
