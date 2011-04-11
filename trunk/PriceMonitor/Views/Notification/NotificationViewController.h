//
//  NotificationViewController.h
//  PriceMonitor
//
//  Created by hubdog on 4/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Three20/Three20.h>


@interface NotificationViewController : TTTableViewController {

}

-(IBAction)clearAll:(id)sender;
-(id)addNotification:(NSString*)notification;

@end
