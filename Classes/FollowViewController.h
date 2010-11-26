//
//  TwitterViewController.h
//  NotMovie1
//
//  Created by Javier Umpierrez on 11/18/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FollowViewController : UITableViewController {
	NSMutableArray *items;
	NSMutableDictionary *item;
}

@property (retain, nonatomic) NSMutableArray *items;


@end
