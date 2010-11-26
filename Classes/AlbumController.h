//
//  AlbumController.h
//  Three20PhotoDemo
//
//  Created by Javier Umpierrez on 11/21/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Three20/Three20.h>

@interface AlbumController : TTThumbsViewController {
	NSArray *images;
	UIActivityIndicatorView *activityIndicator;
	NSArray *items;

}
@property (nonatomic, retain) NSArray *images;
@property (retain, nonatomic) UIActivityIndicatorView *activityIndicator;
@property (retain, nonatomic) NSArray *items;

@end
