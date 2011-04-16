//
//  NotificationList.h
//  PriceMonitor
//
//  Created by hubdog on 4/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NotificationList : NSObject {
	NSMutableArray* itemArray;
}

@property (nonatomic, retain) NSMutableArray* itemArray;

+ (NotificationList *)notificationList;
-(void)loadFromDb;
-(void)addNotification:(NSString*)notification;
-(void)clear;

@end
