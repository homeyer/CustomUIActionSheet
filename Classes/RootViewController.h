
@class CustomUIActionSheetViewController;

@interface RootViewController : UITableViewController {
	CustomUIActionSheetViewController *customUIActionSheetViewController;
}

@property(nonatomic, retain) IBOutlet CustomUIActionSheetViewController *customUIActionSheetViewController;

@end
