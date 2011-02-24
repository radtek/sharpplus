//
//  SearchViewController.h
//  PriceMonitor
//
//  Created by hubdog on 1/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Three20/Three20.h>


@interface SearchViewController : TTTableViewController <UISearchBarDelegate>{
	UIView* _headerView;

}

@property (retain, nonatomic) IBOutlet UIView* headerView;

@end
