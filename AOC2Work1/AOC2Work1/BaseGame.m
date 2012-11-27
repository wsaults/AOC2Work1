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
        [self setGameRating:0];
        [self setNumberOfYourFriendsThatOwnThisGame:0];
        [self setIsMultiPlayer:NO];
    }
    return self;
}

-(void)calculateGameAwesomeness {
    NSLog(@"===================================");
    NSLog(@"Game Title: %@", _gameTitle);
    NSLog(@"Game Rating: %i", _gameRating);
    NSLog(@"Number of your friends that own this game: %i", _numberOfYourFriendsThatOwnThisGame);
    NSLog(@"Is it multi player? %@", (_isMultiPlayer) ? @"YES" : @"NO");
}

@end
