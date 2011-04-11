#import "TabBarController.h"

@implementation TabBarController

///////////////////////////////////////////////////////////////////////////////////////////////////
// UIViewController

- (void)viewDidLoad {
  [self setTabURLs:[NSArray arrayWithObjects:
					@"tt://nib/SearchViewController",//SearchViewController
                    @"tt://viewController/MonitorViewController",//MonitorViewController
					@"tt://nib/NotificationViewController", //NotificationViewController
					@"tt://nib/SettingViewController",//SettingViewController
					@"tt://nib/AboutViewController",//AboutViewController
                    nil]];
}

@end
