//
//  Photo.h
//  Three20PhotoDemo
//
//  Created by Javier Umpierrez on 11/21/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Three20/Three20.h>

@interface Photo : NSObject <TTPhoto> {
	id<TTPhotoSource> _photoSource;
	NSString* _thumbURL;
	NSString* _smallURL;
	NSString* _URL;
	CGSize _size;
	NSInteger _index;
	NSString* _caption;
}

- (id)initWithURL:(NSString*)URL smallURL:(NSString*)smallURL size:(CGSize)size;

- (id)initWithURL:(NSString*)URL smallURL:(NSString*)smallURL size:(CGSize)size
		  caption:(NSString*)caption;

@end
