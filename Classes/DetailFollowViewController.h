//
//  DetailFllowViewController.h
//  NotMovie1
//
//  Created by Javier Umpierrez on 11/24/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DetailFollowViewController : UIViewController {
	NSDictionary *item;
	IBOutlet UIWebView *webpage;
}

@property (retain, nonatomic) NSDictionary *item;
@property (retain, nonatomic) IBOutlet UIWebView *webpage;

- (id)initWithItem:(NSDictionary *)theItem;

@end
