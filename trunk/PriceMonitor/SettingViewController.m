//
//  SettingViewController.m
//  PriceMonitor
//
//  Created by hubdog on 1/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SettingViewController.h"
#import "GlobalSettings.h"


@implementation SettingViewController

@synthesize displayCount;
@synthesize displayOrder;
@synthesize pickerData;


///////////////////////////////////////////////////////////////////////////////////////////////////
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
	if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]){
		self.title = @"設定";
		UIImage* image = [UIImage imageNamed:@"tab.png"];
		self.tabBarItem = [[[UITabBarItem alloc] initWithTitle:self.title image:image tag:0] autorelease];
		
		
	}
	
	return self;
}

- (void)viewDidLoad {
	[super viewDidLoad];
	
	NSArray* array = [[NSArray alloc] initWithObjects:@"標準", @"価格の安い順", @"価格の高い順", @"発売日順", nil];
	self.pickerData = array;
	[array release];	
	
	// init settings 
	GlobalSettings* settings = [GlobalSettings settings];
	
	self.displayCount.selectedSegmentIndex = settings.displayCount;
	[self.displayOrder selectRow:settings.displayOrder inComponent:0 animated:TRUE];
}

- (void) viewDidDisappear:(BOOL)animated{
	//save settings
	GlobalSettings * settings = [GlobalSettings settings];
	settings.displayCount = self.displayCount.selectedSegmentIndex;
	settings.displayOrder = [self.displayOrder selectedRowInComponent:0];
	[settings saveToDb];
}

#pragma mark Pickerview DataSource
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
	return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
	return [pickerData count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger) component{
	return [pickerData objectAtIndex:row];
}

///////////////////////////////////////////////////////////////////////////////////////////////////
-(void)dealloc {
	TT_RELEASE_SAFELY(displayCount);
	TT_RELEASE_SAFELY(displayOrder);	
	TT_RELEASE_SAFELY(pickerData);		
	[super dealloc];
}

@end
