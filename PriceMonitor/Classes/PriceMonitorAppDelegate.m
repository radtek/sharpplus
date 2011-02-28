//
//  PriceMonitorAppDelegate.m
//  PriceMonitor
//
//  Created by hubdog on 1/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PriceMonitorAppDelegate.h"
#import "AboutViewController.h"
#import "TabBarController.h"
#import "MonitorViewController.h"
#import "SettingViewController.h"
#import "MonitorEditViewController.h"
#import "SearchViewController.h"

@implementation PriceMonitorAppDelegate

@synthesize window;


#pragma mark -
#pragma mark Application lifecycle

//- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
//    
//    // Override point for customization after application launch.
//    
//    [self.window makeKeyAndVisible];
//    
//    return YES;
//}

///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)applicationDidFinishLaunching:(UIApplication *)application {
	TTNavigator* navigator = [TTNavigator navigator];
	//navigator.persistenceMode = TTNavigatorPersistenceModeAll;
	navigator.window = self.window;
	
	TTURLMap* map = navigator.URLMap;
	
	// Any URL that doesn't match will fall back on this one, and open in the web browser
	//[map from:@"*" toViewController:[TTWebController class]];
	
	// The tab bar controller is shared, meaning there will only ever be one created.  Loading
	// This URL will make the existing tab bar controller appear if it was not visible.
	[map from:@"tt://tabbar" toSharedViewController:[TabBarController class]];
	
	// A new monitor edit controllers will be created each time you open a monitor URL
	[map from:@"tt://monitorEdit/(initWithMonitor:)" toViewController:[MonitorEditViewController class]];

	//[map from:@"tt://search" toSharedViewController:[SearchController class]];
	//[map from:@"tt://monitor" toSharedViewController:[MonitorController class]];
	
	[map from:@"tt://nib/(loadFromNib:)" toSharedViewController:self];
	[map from:@"tt://nib/(loadFromNib:)/(withClass:)" toSharedViewController:self];
	[map from:@"tt://viewController/(loadFromVC:)" toSharedViewController:self];
	[map from:@"tt://modal/(loadFromNib:)" toModalViewController:self];
	
	// Before opening the tab bar, we see if the controller history was persisted the last time
	if (![navigator restoreViewControllers]) {
		// This is the first launch, so we just start with the tab bar
		[navigator openURLAction:[TTURLAction actionWithURLPath:@"tt://tabbar"]];
	}	
}


///////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * Loads the given viewcontroller from the nib
 */
- (UIViewController*)loadFromNib:(NSString *)nibName withClass:className {
	UIViewController* newController = [[NSClassFromString(className) alloc]
									   initWithNibName:nibName bundle:nil];

	[newController autorelease];
	
	return newController;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * Loads the given viewcontroller from the the nib with the same name as the
 * class
 */
- (UIViewController*)loadFromNib:(NSString*)className {
	return [self loadFromNib:className withClass:className];
}


///////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * Loads the given viewcontroller by name
 */
- (UIViewController *)loadFromVC:(NSString *)className {
	UIViewController * newController = [[ NSClassFromString(className) alloc] init];
	[newController autorelease];
	
	return newController;
}

- (BOOL)application:(UIApplication*)application handleOpenURL:(NSURL*)URL {
	[[TTNavigator navigator] openURLAction:[TTURLAction actionWithURLPath:URL.absoluteString]];
	return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end