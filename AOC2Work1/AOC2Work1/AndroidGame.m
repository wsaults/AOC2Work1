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
        [self setGameRating:1];
        [self setNumberOfYourFriendsThatOwnThisGame:0];
        [self setIsMultiPlayer:NO];
        [self setAndroidVersion:8.0f];
        [self setDoesItWork:NO];
        
    }
    return self;
}

-(void)calculateGameAwesomeness {
    [super calculateGameAwesomeness];
    NSLog(@"Android Version: %f", _androidVersion);
    NSLog(@"Uses accelerometer? %@", (_doesItWork) ? @"YES" : @"NO");
}

@end
