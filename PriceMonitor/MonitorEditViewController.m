//
//  MonitorEditViewController.m
//  PriceMonitor
//
//  Created by hubdog on 1/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MonitorEditViewController.h"
#import "SearchResult.h"
#import "CompareResult.h"



@implementation MonitorEditViewController

@synthesize lblName, edtCategory,segCondition, edtPrice,name,
			edtTime, segTime, action, itemId, item, price, category;

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
	self.item.checkTime = [NSDate date];
	//save to db
	[self.item saveToDb:self.action];
	[self dismissModalViewControllerAnimated:YES];
	
	if (_compareView.action==0)
		[_compareView setEditAction];
}

- (id)initWithAction:(NSString*)action query:(NSDictionary*)query  {
	if (self = [super initWithNibName:@"MonitorEditViewController" bundle:nil]) {
		if ([action isEqualToString:@"new"]){
			self.action = 0;
			self.title = @"新規モニター";
		}else{
			self.action = 1;
			self.title = @"編集モニター";
		}
		
		NSInteger rslt = [[query objectForKey:@"id"] intValue];
		_compareView= (CompareViewController*)rslt;
		self.itemId= _compareView.itemId;
		self.category = _compareView.category;
		self.price = [_compareView.price intValue];
		self.name = _compareView.name;
		
		self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc]
												   initWithTitle:@"完了" style:UIBarButtonItemStyleDone
												   target:self action:@selector(updateItem)] autorelease];
		self.navigationItem.leftBarButtonItem = [[[UIBarButtonItem alloc]
												  initWithTitle:@"キャンセル" style:UIBarButtonItemStyleBordered
												  target:self action:@selector(dismiss)] autorelease];
	
	}
	return self;
}

- (void)viewDidLoad {
	[super viewDidLoad];
	
	if (action==0)
	{
		//new
		self.item = [[[MonitorItem alloc] init] autorelease];
		
		self.lblName.text = self.name;
		self.edtPrice.text = [NSString stringWithFormat:@"%d", self.price];
		self.edtCategory.text = self.category;
		self.item.name = self.name; 
		self.item.itemId= self.itemId;
		self.item.currPrice = self.price;
		self.item.prevPrice = self.price;
	}
	else {
		//load monitor information from db 
		self.item = [[[MonitorItem alloc] initWithItemId:self.itemId] autorelease];
		self.lblName.text = self.item.name;
		self.edtCategory.text = self.item.category;
		self.edtPrice.text = [NSString stringWithFormat:@"%d", self.item.price];
		self.edtTime.text = [NSString stringWithFormat:@"%d", self.item.time];
		self.segCondition.selectedSegmentIndex = self.item.condition;
		self.segTime.selectedSegmentIndex = self.item.timeType;	
		self.item.currPrice = self.price;
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
