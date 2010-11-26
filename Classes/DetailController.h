//
//  DetailController.h
//  NotMovie1
//
//  Created by Javier Umpierrez on 11/19/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface DetailController : UIViewController {
	NSDictionary *item;
	IBOutlet UILabel *itemTitle;
	IBOutlet UILabel *itemDate;
	IBOutlet UIWebView *itemSummary;
}

@property (retain, nonatomic) NSDictionary *item;
@property (retain, nonatomic) IBOutlet UILabel *itemTitle;
@property (retain, nonatomic) IBOutlet UILabel *itemDate;
@property (retain, nonatomic) IBOutlet UIWebView *itemSummary;

- (id)initWithItem:(NSDictionary *)theItem andViewName:(NSString *)theViewName;

- (IBAction)playPodcast:(id)sender;

@end
