#import <React/RCTBundleURLProvider.h>
#import <ReactNativeNavigation/ReactNativeNavigation.h>

#import "AppDelegate.h"
#import <ReactNativeNavigation/RNNCustomViewController.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	NSURL *jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
	[ReactNativeNavigation bootstrap:jsCodeLocation launchOptions:launchOptions];
	
	[ReactNativeNavigation registerExternalComponent:@"RNNCustomComponent" callback:^UIViewController *(NSDictionary *props, RCTBridge *bridge) {
		return [[RNNCustomViewController alloc] initWithProps:props];
	}];
	
	return YES;
}

@end
