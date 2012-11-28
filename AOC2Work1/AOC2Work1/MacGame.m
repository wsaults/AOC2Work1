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
    NSInteger ratingToReturn;
    ratingToReturn = [title length] + [self operatingSystem] + rating;
    ratingToReturn += ([self isFromAppStore]) ? 1 : 0;
    ratingToReturn += 25; // Because the platform is Mac :P
    
    return ratingToReturn;
}

@end
