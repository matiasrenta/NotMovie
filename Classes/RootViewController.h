//
//  RootViewController.h
//  NotMovie1
//
//  Created by Javier Umpierrez on 11/18/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface RootViewController : UITableViewController <NSFetchedResultsControllerDelegate> {
	IBOutlet UIButton* button;
	UILabel* labelNoticias;
	IBOutlet UIWebView *trailerWebView;
	
@private
    NSFetchedResultsController *fetchedResultsController_;
    NSManagedObjectContext *managedObjectContext_;
}
@property (nonatomic, retain) IBOutlet UILabel* labelNoticias;
@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain) NSFetchedResultsController *fetchedResultsController;
@property (nonatomic, retain) UIWebView *trailerWebView;

- (IBAction)userPressedButton:(id)sender;
@end
