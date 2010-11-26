//
//  Parser.h
//  NotMovie1
//
//  Created by Javier Umpierrez on 11/19/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ParserDelegate <NSObject>
- (void)receivedItems:(NSArray *)theItems;
@end

@interface Parser : NSObject  {
	id _delegate;
	
	NSMutableData *responseData;
	NSMutableArray *items;
	
	NSMutableDictionary *item;
	NSString *currentElement;
	NSMutableString * currentTitle, * currentDate, * currentSummary, * currentLink, * currentPodcastLink, * currentThumbnailLink;
}

@property (retain, nonatomic) NSMutableData *responseData;
@property (retain, nonatomic) NSMutableArray *items;
@property (retain, nonatomic) NSMutableString *currentTitle;
@property (retain, nonatomic) NSMutableString *currentDate;
@property (retain, nonatomic) NSMutableString *currentSummary;
@property (retain, nonatomic) NSMutableString *currentLink;
@property (retain, nonatomic) NSMutableString *currentPodcastLink;
@property (retain, nonatomic) NSMutableString *currentThumbnailLink;

- (void)parseRssFeed:(NSString *)url withDelegate:(id)aDelegate;

- (id)delegate;
- (void)setDelegate:(id)new_delegate;

@end
