//
//  BaseGame.h
//  AOC2Work1
//
//  Created by Will Saults on 11/26/12.
//  Copyright (c) 2012 Fullsail. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseGame : NSObject

typedef enum {
    IOS,
    ANDROID,
    MAC
} gameTypeEnum;

// Nonatomic = not thread safe.
// Strong = A strong reference to this object on the heap.
// A strong reference tells the system that I need this object and it should hang around until im done with it.
@property (nonatomic, strong) NSString *gameTitle;
@property (nonatomic, strong) NSString *platform;
// These don't need a strong reference since they are not objects.
@property (nonatomic) NSInteger gameRating;

-(NSInteger)calculateGameAwesomenessWithType:(NSInteger)type gameTitle:(NSString *)title gameRating:(NSInteger)rating;

@end
