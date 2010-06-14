
#import "CustomUIActionSheetViewController.h"

@interface CustomUIActionSheetViewController ()
-(void) slideIn;
@end

@implementation CustomUIActionSheetViewController

@synthesize actionSheetView;

- (void)viewWillAppear:(BOOL)animated {
	//slide in the filter view from the bottom
	[self slideIn];	
}

- (void)slideIn {
	
	//set initial location at bottom of view
    CGRect frame = self.actionSheetView.frame;
    frame.origin = CGPointMake(0.0, self.view.bounds.size.height);
    self.actionSheetView.frame = frame;
    [self.view addSubview:self.actionSheetView];
	
    //animate to new location, determined by height of the view in the NIB
    [UIView beginAnimations:@"presentWithSuperview" context:nil];
    frame.origin = CGPointMake(0.0, self.view.bounds.size.height - self.actionSheetView.bounds.size.height);
	
    self.actionSheetView.frame = frame;
    [UIView commitAnimations];
}

- (void) slideOut {
	
	//do what you need to do with information gathered from the custom action sheet. E.g., apply data filter on parent view.
	
	[UIView beginAnimations:@"removeFromSuperviewWithAnimation" context:nil];
	
    // Set delegate and selector to remove from superview when animation completes
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(animationDidStop:finished:context:)];
	
    // Move this view to bottom of superview
    CGRect frame = self.actionSheetView.frame;
    frame.origin = CGPointMake(0.0, self.view.bounds.size.height);
    self.actionSheetView.frame = frame;
	
    [UIView commitAnimations]; 
}

// Method called when removeFromSuperviewWithAnimation's animation completes
- (void)animationDidStop:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context {
    if ([animationID isEqualToString:@"removeFromSuperviewWithAnimation"]) {
        [self.view removeFromSuperview];
    }
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return YES;
}
*/

- (void)dealloc {
	[self.actionSheetView release];
    [super dealloc];
}


@end
