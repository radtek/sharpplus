//
//  SettingViewController.h
//  PriceMonitor
//
//  Created by hubdog on 1/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Three20/Three20.h>


@interface SettingViewController : TTViewController< UIPickerViewDelegate, UIPickerViewDataSource> {
	UISegmentedControl* displayCount;
	UIPickerView* displayOrder;
    NSArray* pickerData;
}

@property (nonatomic, retain) IBOutlet UISegmentedControl* displayCount;
@property (nonatomic, retain) IBOutlet UIPickerView* displayOrder;
@property (nonatomic, retain) NSArray* pickerData;

@end
