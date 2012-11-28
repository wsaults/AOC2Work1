//
//  iOSGame.m
//  AOC2Work1
//
//  Created by Will Saults on 11/26/12.
//  Copyright (c) 2012 Fullsail. All rights reserved.
//

#import "iOSGame.h"

@implementation iOSGame
// I would @synthesize here but there is no longer a need because the compiler creates the _variable for me.

-(id)init {
    self = [super init];
    if (self != nil) {
        [self setGameTitle:@"Bike Race"];
        [self setPlatform:@"iOS"];
        [self setGameRating:5];
        [self setIOSVersion:6.0f];
        [self setUsesAccelerometer:YES];
        
    }
    return self;
}

-(NSInteger)calculateGameAwesomenessWithType:(NSInteger)type gameTitle:(NSString *)title gameRating:(NSInteger)rating {
    NSInteger ratingToReturn;
    ratingToReturn = [title length] + [self iOSVersion] + rating;
    ratingToReturn += ([self usesAccelerometer]) ? 1 : 0;
    ratingToReturn += 50; // Because the platform is iOS :P
    
    return ratingToReturn;
}

@end
