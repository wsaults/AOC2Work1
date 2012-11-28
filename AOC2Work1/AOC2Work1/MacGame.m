//
//  MacGame.m
//  AOC2Work1
//
//  Created by Will Saults on 11/26/12.
//  Copyright (c) 2012 Fullsail. All rights reserved.
//

#import "MacGame.h"

@implementation MacGame
// I would @synthesize here but there is no longer a need because the compiler creates the _variable for me.

-(id)init {
    self = [super init];
    if (self != nil) {
        [self setGameTitle:@"Angry Birds"];
        [self setPlatform:@"Mac"];
        [self setGameRating:5];
        [self setOperatingSystem:10.8f];
        [self setIsFromAppStore:YES];
        
    }
    return self;
}

-(NSInteger)calculateGameAwesomenessWithType:(NSInteger)type gameTitle:(NSString *)title gameRating:(NSInteger)rating {
    NSLog(@"OS: %f", _operatingSystem);
    NSLog(@"Downloaded from app store? %@", (_isFromAppStore) ? @"YES" : @"NO");
    return rating;
}

@end
