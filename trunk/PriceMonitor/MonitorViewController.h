//
//  MonitorViewController.h
//  PriceMonitor
//
//  Created by hubdog on 1/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Three20/Three20.h>
#import "GADBannerView.h"


@interface MonitorViewController : TTTableViewController <GADBannerViewDelegate> {
	GADBannerView* _bannerView;
	BOOL _bannerVisible;

}

-(IBAction)toggleDelete:(id)sender;
-(IBAction)updatePrice:(id)sender;

@end
