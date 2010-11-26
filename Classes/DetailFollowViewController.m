//
//  DetailFllowViewController.m
//  NotMovie1
//
//  Created by Javier Umpierrez on 11/24/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "DetailFollowViewController.h"


@implementation DetailFollowViewController

@synthesize item, webpage;

- (id)initWithItem:(NSDictionary *)theItem {
	self.item = theItem;
	return self;
}

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

- (void) viewWillAppear:(BOOL)animated{
	[super viewWillAppear:animated];
	[self.navigationItem setTitle:[item objectForKey:@"title"]];
	
	NSURLRequest *request = [[NSURLRequest alloc]
							 initWithURL: [NSURL URLWithString: [item objectForKey:@"link"]]]; 
	
	[self.webpage loadRequest:request];
	[request release];
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


- (void)dealloc {
    [super dealloc];
}


@end
