
#import <UIKit/UIKit.h>

@interface CustomUIActionSheetViewController : UIViewController {
	UIView *actionSheetView;
}

@property(nonatomic, retain) IBOutlet UIView *actionSheetView;

- (IBAction) slideOut;

@end
