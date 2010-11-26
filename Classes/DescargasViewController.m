//
//  DescargasViewController.m
//  NotMovie1
//
//  Created by Javier Umpierrez on 11/25/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "DescargasViewController.h"
#import "DownloadViewController.h"


@implementation DescargasViewController

- (IBAction)gotoDownload:(id)sender {
	NSString *viewName = [[NSString alloc] init];
	if ([[sender currentTitle] isEqualToString:@"wallpapers"]) {
		viewName = @"WallpapersView";
	}
	else if ([[sender currentTitle] isEqualToString:@"ringtones"]){
		viewName = @"RingtonesView";
	}
	
	DownloadViewController *downloadViewController = [[DownloadViewController alloc] initWithNibName:viewName bundle:nil];
	[self.navigationController pushViewController:downloadViewController animated:YES];
	self.navigationController.navigationBarHidden = NO;
	[downloadViewController release];
}

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
