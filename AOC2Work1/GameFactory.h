//
//  GameFactory.h
//  AOC2Work1
//
//  Created by Will Saults on 11/26/12.
//  Copyright (c) 2012 Fullsail. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BaseGame;
@class iOSGame;
@class AndroidGame;
@class MacGame;

@interface GameFactory : NSObject

+(BaseGame *)createNewGameOfType:(NSInteger)gameType;

@end
