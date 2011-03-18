//
//  MonitorEditViewController.m
//  PriceMonitor
//
//  Created by hubdog on 1/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MonitorEditViewController.h"


@implementation MonitorEditViewController

@synthesize lblName, edtCategory,segCondition, edtPrice, edtTime, segTime;

// private

- (void)dismiss {
	[self dismissModalViewControllerAnimated:YES];
}

- (id)initWithAction:(NSString*)action query:(NSDictionary*)query  {
	if (self = [super initWithNibName:@"MonitorEditViewController" bundle:nil]) {
		if ([action isEqualToString:@"new"]){
			_action = 0;
		}else{
			_action = 1;
		}
		self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc]
												   initWithTitle:@"Done" style:UIBarButtonItemStyleDone
												   target:self action:@selector(dismiss)] autorelease];
		self.navigationItem.leftBarButtonItem = [[[UIBarButtonItem alloc]
												  initWithTitle:@"Cancel" style:UIBarButtonItemStyleBordered
												  target:self action:@selector(dismiss)] autorelease];
	
		self.title = [NSString stringWithFormat:@"Edit Monitor %@", [query objectForKey:@"item"]];
	}
	return self;
}

- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.lblName.text = @"Edit Monitor Item";
	
}

- (void)dealloc {
	[lblName release];
	[edtCategory release];
	[segCondition release];
	[edtPrice release];
	[edtTime release];
	[segTime release];
	[super dealloc];
}

@end
