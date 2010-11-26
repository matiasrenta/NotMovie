//
//  AlbumController.m
//  Three20PhotoDemo
//
//  Created by Javier Umpierrez on 11/21/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "AlbumController.h"
#import "PhotoSource.h"
#import "Photo.h"
#import "Parser.h"

@interface AlbumController (PrivateMethods)
- (void)loadData;
- (void)receivedItems:(NSArray *)theItems;
-(void)createPhotosWithArray:(NSArray *)theItems;
@end

@implementation AlbumController
@synthesize images, activityIndicator, items;

- (void)viewDidLoad {
    //[super viewDidLoad];
	
    UIActivityIndicatorView *indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
	indicator.hidesWhenStopped = YES;
	[indicator stopAnimating];
	self.activityIndicator = indicator;
	[indicator release];
	
	UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithCustomView:self.activityIndicator];
	self.navigationItem.rightBarButtonItem = rightButton;
	[rightButton release];
	
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
	
	[self setWantsFullScreenLayout:YES];
	UINavigationController* navController = self.navigationController;
	navController.navigationBar.barStyle = UIBarStyleBlackOpaque;
	

	[self loadData];
}

- (void)loadData {
	if (items == nil) {
		[activityIndicator startAnimating];
		Parser *rssParser = [[Parser alloc] init];
		[rssParser parseRssFeed:@"http://rockandroll.com.mx/tinamapp/galeriaimagenes.xml" withDelegate:self];
		[rssParser release];		
	} else {
		[self receivedItems:items];
	}
	
}

- (void)receivedItems:(NSArray *)theItems {
	items = theItems;
	[self createPhotosWithArray:theItems]; // method to set up the photos array
	self.photoSource = [[PhotoSource alloc]
						initWithType:PhotoSourceNormal
						title:@"Galeria de Fotos"
						photos:images
						photos2:nil
						];
	
	[activityIndicator stopAnimating];
}


-(void)createPhotosWithArray:(NSArray *)theItems {
	
	NSMutableArray *ma = [[NSMutableArray alloc] init];

	for (int i=0; i<[theItems count]; i++) {
		NSString *fotoStrURL = [[theItems objectAtIndex:i] objectForKey:@"podcastLink"];
		[ma addObject:[[[Photo alloc] initWithURL:fotoStrURL
										 smallURL:fotoStrURL
											 size:CGSizeMake(320, 212)] autorelease]];
		[fotoStrURL release];
	}
		
		/*
		if (i==0) {
			[ma addObject:[[[Photo alloc] initWithURL:@"http://www.paratyboat.com/img_global/05m.jpg"
											 smallURL:@"http://www.paratyboat.com/img_global/05mmini.jpg"
												 size:CGSizeMake(320, 212)] autorelease]];
		}
		else {
			[ma addObject:[[[Photo alloc] initWithURL:@"http://www.paratyboat.com/img_global/06e.jpg"
											 smallURL:@"http://www.paratyboat.com/img_global/06emini.jpg"
												 size:CGSizeMake(320, 212)] autorelease]];
		}
		 */
	
	images = [[NSArray alloc] initWithArray:ma];
	[ma release];
}


@end
