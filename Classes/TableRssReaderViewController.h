//
//  TableRssReaderViewController.h
//  NotMovie1
//
//  Created by Javier Umpierrez on 11/19/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Parser.h"
#import "DetailController.h"


@interface TableRssReaderViewController : UITableViewController {
	UIActivityIndicatorView *activityIndicator;
	NSArray *items;
}

@property (retain, nonatomic) UIActivityIndicatorView *activityIndicator;
@property (retain, nonatomic) NSArray *items;

@end
