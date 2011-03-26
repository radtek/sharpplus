//
//  CompareViewController.h
//  PriceMonitor
//
//  Created by hubdog on 3/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Three20/Three20.h>


@interface CompareViewController : TTTableViewController {
	NSString* _itemId;
	NSInteger _action;
	NSString* _name;	
	NSInteger _result;
	UIView* _headerView;
	UILabel* _product;
	UILabel* _spec;
	
}

@property (nonatomic,retain) NSString* itemId;
@property (nonatomic,assign) NSInteger action;
@property (nonatomic,retain) NSString* name;
@property (nonatomic,assign) NSInteger result;

@property (retain, nonatomic) IBOutlet UIView* headerView;
@property (retain, nonatomic) IBOutlet UILabel* product;
@property (retain, nonatomic) IBOutlet UILabel* spec;


@end
