//
//  AndroidGame.m
//  AOC2Work1
//
//  Created by Will Saults on 11/26/12.
//  Copyright (c) 2012 Fullsail. All rights reserved.
//

#import "AndroidGame.h"

@implementation AndroidGame
// I would @synthesize here but there is no longer a need because the compiler creates the _variable for me.

-(id)init {
    self = [super init];
    if (self != nil) {
        [self setGameTitle:@"Snake"];
        [self setPlatform:@"Android"];
        [self setGameRating:1];
        [self setAndroidVersion:8.0f];
        [self setDoesItWork:NO];
        
    }
    return self;
}

-(NSInteger)calculateGameAwesomenessWithType:(NSInteger)type gameTitle:(NSString *)title gameRating:(NSInteger)rating {    
    NSInteger ratingToReturn;
    ratingToReturn = [title length] + [self androidVersion] + rating;
    ratingToReturn += ([self doesItWork]) ? 1 : 0;
    
    return ratingToReturn;
}

@end
