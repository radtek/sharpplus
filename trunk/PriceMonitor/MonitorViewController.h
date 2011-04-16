//
//  MonitorViewController.h
//  PriceMonitor
//
//  Created by hubdog on 1/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Three20/Three20.h>
#import "GADBannerView.h"
#import "MBProgressHUD.h"


@interface MonitorViewController : TTTableViewController <GADBannerViewDelegate, MBProgressHUDDelegate> {
	GADBannerView* _bannerView;
	BOOL _bannerVisible;
	MBProgressHUD *HUD;
}

-(IBAction)toggleDelete:(id)sender;
-(IBAction)updatePrice:(id)sender;

@end
