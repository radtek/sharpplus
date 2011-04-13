//
//  MonitorEditViewController.h
//  PriceMonitor
//
//  Created by hubdog on 1/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Three20/Three20.h>
#import "MonitorItem.h"
#import "CompareViewController.h"

@interface MonitorEditViewController : TTViewController {
	IBOutlet UILabel* lblName;
	IBOutlet UITextField* edtCategory;
	IBOutlet UISegmentedControl* segCondition;
	IBOutlet UITextField* edtPrice;
	IBOutlet UISegmentedControl* segTime;
	NSInteger action;
	NSString* itemId;
	MonitorItem* item;
	NSString* name;
	NSInteger price;
	NSString* category;
	
	CompareViewController* _compareView;
}

@property (retain, nonatomic) UILabel* lblName;
@property (retain, nonatomic) UITextField* edtCategory;
@property (retain, nonatomic) UISegmentedControl* segCondition;
@property (retain, nonatomic) UITextField* edtPrice;
@property (retain, nonatomic) UISegmentedControl* segTime;
@property (retain, nonatomic) NSString* itemId;
@property (assign, nonatomic) NSInteger action;
@property (retain, nonatomic) MonitorItem* item;
@property (assign, nonatomic) NSInteger price;
@property (retain, nonatomic) NSString* category;
@property (retain, nonatomic) NSString* name;

-(IBAction)categoryDoneEditing:(id)sender;
-(IBAction)backgroundClicking:(id)sender;

@end
