//
//  MonitorEditViewController.h
//  PriceMonitor
//
//  Created by hubdog on 1/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Three20/Three20.h>


@interface MonitorEditViewController : TTViewController {
	IBOutlet UILabel* lblName;
	IBOutlet UITextField* edtCategory;
	IBOutlet UISegmentedControl* segCondition;
	IBOutlet UITextField* edtPrice;
	IBOutlet UITextField* edtTime;
	IBOutlet UISegmentedControl* segTime;
	NSInteger _action;
}

@property (retain, nonatomic) UILabel* lblName;
@property (retain, nonatomic) UITextField* edtCategory;
@property (retain, nonatomic) UISegmentedControl* segCondition;
@property (retain, nonatomic) UITextField* edtPrice;
@property (retain, nonatomic) UITextField* edtTime;
@property (retain, nonatomic) UISegmentedControl* segTime;

@end
