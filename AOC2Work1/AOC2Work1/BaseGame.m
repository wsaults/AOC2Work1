//
//  BaseGame.m
//  AOC2Work1
//
//  Created by Will Saults on 11/26/12.
//  Copyright (c) 2012 Fullsail. All rights reserved.
//

#import "BaseGame.h"

@implementation BaseGame
// I would @synthesize here but there is no longer a need because the compiler creates the _variable for me.


-(id)init {
    self = [super init];
    if (self != nil) {
        [self setGameTitle:nil];
        [self setPlatform:nil];
        [self setGameRating:0];
    }
    return self;
}

-(NSInteger)calculateGameAwesomenessWithType:(NSInteger)type gameTitle:(NSString *)title gameRating:(NSInteger)rating {
    NSLog(@"===================================");
    NSLog(@"Game Title: %@", _gameTitle);
    NSLog(@"Game Platform: %@", _platform);
    NSLog(@"Game Rating: %i", _gameRating);
    return 0;
}

@end
