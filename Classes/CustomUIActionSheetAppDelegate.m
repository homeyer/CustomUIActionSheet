
#import "CustomUIActionSheetAppDelegate.h"
#import "RootViewController.h"

@implementation CustomUIActionSheetAppDelegate

@synthesize window;
@synthesize navigationController;

#pragma mark -
#pragma mark Application lifecycle

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
	
	[window addSubview:[navigationController view]];
    [window makeKeyAndVisible];
}


#pragma mark -
#pragma mark Memory management

- (void)dealloc {
	[navigationController release];
	[window release];
	[super dealloc];
}


@end

