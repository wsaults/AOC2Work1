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
        [self setGameRating:5];
        [self setNumberOfYourFriendsThatOwnThisGame:6];
        [self setIsMultiPlayer:YES];
        [self setIOSVersion:6.0f];
        [self setUsesAccelerometer:YES];
        
    }
    return self;
}

-(void)calculateGameAwesomeness {
    [super calculateGameAwesomeness];
    NSLog(@"iOS Version: %f", _iOSVersion);
    NSLog(@"Uses accelerometer? %@", (_usesAccelerometer) ? @"YES" : @"NO");
}

@end
