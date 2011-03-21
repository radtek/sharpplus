//
//  MonitorEditViewController.m
//  PriceMonitor
//
//  Created by hubdog on 1/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MonitorEditViewController.h"



@implementation MonitorEditViewController

@synthesize lblName, edtCategory,segCondition, edtPrice, edtTime, segTime, action, itemId, item;

// private

- (void)dismiss {
	[self dismissModalViewControllerAnimated:YES];
}

- (void) updateItem{
	//update information
	self.item.category = self.edtCategory.text;
	self.item.price = [self.edtPrice.text intValue];
	self.item.time = [self.edtTime.text intValue];
	self.item.condition = self.segCondition.selectedSegmentIndex;
	self.item.timeType = self.segTime.selectedSegmentIndex;
	//save to db
	[self.item saveToDb];
	[self dismissModalViewControllerAnimated:YES];
}

- (id)initWithAction:(NSString*)action query:(NSDictionary*)query  {
	if (self = [super initWithNibName:@"MonitorEditViewController" bundle:nil]) {
		if ([action isEqualToString:@"new"]){
			self.action = 0;
		}else{
			self.action = 1;
		}
		
		self.itemId = [query objectForKey:@"itemId"];
		
		self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc]
												   initWithTitle:@"Done" style:UIBarButtonItemStyleDone
												   target:self action:@selector(updateItem)] autorelease];
		self.navigationItem.leftBarButtonItem = [[[UIBarButtonItem alloc]
												  initWithTitle:@"Cancel" style:UIBarButtonItemStyleBordered
												  target:self action:@selector(dismiss)] autorelease];
	
		self.title = [NSString stringWithFormat:@"Edit Monitor %@", [query objectForKey:@"name"]];
	}
	return self;
}

- (void)viewDidLoad {
	[super viewDidLoad];
	
	if (action==0)
	{
		//new
	}
	else {
		//load monitor information from db 
		//self.lblName.text = @"Edit Monitor Item";
		self.item = [[MonitorItem alloc] initWithItemId:self.itemId];
		self.lblName.text = self.item.name;
		self.edtCategory.text = self.item.category;
		self.edtPrice.text = [NSString stringWithFormat:@"%d", self.item.price];
		self.edtTime.text = [NSString stringWithFormat:@"%d", self.item.time];
		self.segCondition.selectedSegmentIndex = self.item.condition;
		self.segTime.selectedSegmentIndex = self.item.timeType;	
	}
}

//event handler
-(IBAction)categoryDoneEditing:(id)sender{
	[sender resignFirstResponder];
}

-(IBAction)backgroundClicking:(id)sender{
	[edtTime resignFirstResponder];
	[edtPrice resignFirstResponder];
	[edtCategory resignFirstResponder];
}

- (void)dealloc {
	[item release];
	[itemId release];
	[lblName release];
	[edtCategory release];
	[segCondition release];
	[edtPrice release];
	[edtTime release];
	[segTime release];
	[super dealloc];
}

@end
