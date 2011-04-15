//
//  CompareViewController.h
//  PriceMonitor
//
//  Created by hubdog on 3/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Three20/Three20.h>
#import "GADBannerView.h"


@interface CompareViewController : TTTableViewController <GADBannerViewDelegate>{
	NSString* _itemId;
	NSInteger _action;
	NSString* _name;	
	NSString* _price;
	NSInteger _result;
	NSString* _category;
	
	UIView* _headerView;
	GADBannerView* _bannerView;
	BOOL _bannerVisible;
	UILabel* _product;
	UILabel* _spec;
	
}

@property (nonatomic,retain) NSString* itemId;
@property (nonatomic,assign) NSInteger action;
@property (nonatomic,retain) NSString* name;
@property (nonatomic,assign) NSInteger result;
@property (nonatomic,retain) NSString* price;
@property (nonatomic,retain) NSString* category;

@property (retain, nonatomic) IBOutlet UIView* headerView;
@property (retain, nonatomic) IBOutlet UILabel* product;
@property (retain, nonatomic) IBOutlet UILabel* spec;

-(void)setEditAction;

@end
