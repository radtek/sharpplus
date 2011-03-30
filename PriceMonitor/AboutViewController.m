//
//  AboutViewController.m
//  PriceMonitor
//
//  Created by hubdog on 1/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "AboutViewController.h"


@implementation AboutViewController

///////////////////////////////////////////////////////////////////////////////////////////////////
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
	if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]){
		self.title = @"モニターについて";
		UIImage* image = [UIImage imageNamed:@"tab.png"];
		self.tabBarItem = [[[UITabBarItem alloc] initWithTitle:self.title image:image tag:0] autorelease];
		
	}
	
	return self;
}

@end
