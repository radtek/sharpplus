//
//  NotificationViewController.h
//  PriceMonitor
//
//  Created by hubdog on 4/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Three20/Three20.h>
#import "GADBannerView.h"


@interface NotificationViewController : TTTableViewController<GADBannerViewDelegate> {
	GADBannerView* _bannerView;

}

-(IBAction)clearAll:(id)sender;
-(id)addNotification:(NSString*)notification;

@end
