//
//  PriceMonitorAppDelegate.h
//  PriceMonitor
//
//  Created by hubdog on 1/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Three20/Three20.h>
#import "DIOSConnect.h"

@interface PriceMonitorAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    DIOSConnect *session;
	NSString* deviceToken;
}

@property (nonatomic, retain) DIOSConnect *session;
@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, copy) NSString* deviceToken;

@end

