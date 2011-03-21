//
//  MonitorEditViewController.h
//  PriceMonitor
//
//  Created by hubdog on 1/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Three20/Three20.h>
#import "MonitorItem.h"

@interface MonitorEditViewController : TTViewController {
	IBOutlet UILabel* lblName;
	IBOutlet UITextField* edtCategory;
	IBOutlet UISegmentedControl* segCondition;
	IBOutlet UITextField* edtPrice;
	IBOutlet UITextField* edtTime;
	IBOutlet UISegmentedControl* segTime;
	NSInteger action;
	NSString* itemId;
	MonitorItem* item;
	NSInteger result;
	NSInteger price;
}

@property (retain, nonatomic) UILabel* lblName;
@property (retain, nonatomic) UITextField* edtCategory;
@property (retain, nonatomic) UISegmentedControl* segCondition;
@property (retain, nonatomic) UITextField* edtPrice;
@property (retain, nonatomic) UITextField* edtTime;
@property (retain, nonatomic) UISegmentedControl* segTime;
@property (retain, nonatomic) NSString* itemId;
@property (assign, nonatomic) NSInteger action;
@property (retain, nonatomic) MonitorItem* item;
@property (assign, nonatomic) NSInteger result;
@property (assign, nonatomic) NSInteger price;

-(IBAction)categoryDoneEditing:(id)sender;
-(IBAction)backgroundClicking:(id)sender;

@end
