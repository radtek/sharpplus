//
//  MonitorEditViewController.m
//  PriceMonitor
//
//  Created by hubdog on 1/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MonitorEditViewController.h"


@implementation MonitorEditViewController

@synthesize lblName;

- (id)initWithMonitor:(NSString*)itemId {
	if (self = [super initWithNibName:@"MonitorEditViewController" bundle:nil]) {
		//self.lblName.text = [NSString stringWithFormat:@"Monitor ID %@", itemId];
//		NSString *newText = [[NSString alloc] initWithFormat:
//							 @"Edit Monitor %@", itemId];
//		lblName.text = newText;
//		[newText release];
		
		self.title = [NSString stringWithFormat:@"Edit Monitor %@", itemId];
		self.navigationItem.backBarButtonItem =
		[[[UIBarButtonItem alloc] initWithTitle: @"Monitor List"
										  style: UIBarButtonItemStyleBordered
										 target: nil
										 action: nil] autorelease];		
//		self.navigationItem.leftBarButtonItem =
//		[[[UIBarButtonItem alloc] initWithTitle:@"Monitor List" style:UIBarButtonItemStyleBordered
//										 target:self action:@selector(showMonitorList)] autorelease];
	}
	return self;
}

- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.lblName.text = @"Edit Monitor Item";
	
}

- (void)dealloc {
	[lblName release];
	[super dealloc];
}

@end
