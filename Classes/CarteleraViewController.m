//
//  CarteleraViewController.m
//  NotMovie1
//
//  Created by Javier Umpierrez on 11/25/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "CarteleraViewController.h"


@implementation CarteleraViewController
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
 // Implement loadView to create a view hierarchy programmatically, without using a nib.
 - (void)loadView {
 }
 */


- (void) viewWillAppear:(BOOL)animated{
	[super viewWillAppear:animated];
	[self.navigationItem setTitle:@"Cartelera"];
}



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)loadData {
	if (items == nil) {
		[activityIndicator startAnimating];
		Parser *rssParser = [[Parser alloc] init];
		[rssParser parseRssFeed:@"http://rockandroll.com.mx/tinamapp/galeriaimagenestinamapp.xml" withDelegate:self];
		[rssParser release];
	} else {
		[self.tableView reloadData];
		//[self receivedItems:items];
	}
}


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

#pragma mark Table view methods

// Override to support row selection in the table view.
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	NSDictionary *theItem = [items objectAtIndex:indexPath.row];
	DetailController *nextController = [[DetailController alloc] initWithItem:theItem andViewName:@"DetailCarteleraView"];
	[self.navigationController pushViewController:nextController animated:YES];
	[nextController release];
}

- (void)dealloc {
    [super dealloc];
}


@end
