//
//  GameFactory.m
//  AOC2Work1
//
//  Created by Will Saults on 11/26/12.
//  Copyright (c) 2012 Fullsail. All rights reserved.
//

#import "GameFactory.h"

@implementation GameFactory

+(BaseGame *)createNewGameOfType:(NSInteger)gameType {
    return [iOSGame new];
}

@end
