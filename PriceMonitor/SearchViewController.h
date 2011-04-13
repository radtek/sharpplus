//
//  SearchViewController.h
//  PriceMonitor
//
//  Created by hubdog on 1/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Three20/Three20.h>
#import "GADBannerView.h"

@interface SearchViewController : TTTableViewController <UISearchBarDelegate, GADBannerViewDelegate>{
	UIView* _headerView;
	GADBannerView* _bannerView;
}

@property (retain, nonatomic) IBOutlet UIView* headerView;

@end
