
#import "RootViewController.h"
#import "CustomUIActionSheetViewController.h"

@implementation RootViewController

@synthesize customUIActionSheetViewController;

- (void)viewDidLoad {
    [super viewDidLoad];

	self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc] 
		initWithBarButtonSystemItem:UIBarButtonSystemItemAction 
		target:self 
		action:@selector(showCustomView)] autorelease];
}

- (void)showCustomView {
		
	[self.navigationController.view addSubview:self.customUIActionSheetViewController.view];
	
	// Since adding manually, directly call viewWillAppear
    // http://stackoverflow.com/questions/131062/iphone-viewwillappear-not-firing
    [self.customUIActionSheetViewController viewWillAppear:NO];
}

/*
 // Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return YES;
}
*/


#pragma mark Table view methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
	// Configure the cell.

    return cell;
}


- (void)dealloc {
    [super dealloc];
	[self.customUIActionSheetViewController release];
}


@end

