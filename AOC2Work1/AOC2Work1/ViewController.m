//
//  ViewController.m
//  AOC2Work1
//
//  Created by Will Saults on 11/26/12.
//  Copyright (c) 2012 Fullsail. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    iOSGame *funIOSGame = (iOSGame*)[GameFactory createNewGameOfType:IOS];
    
    if (funIOSGame != nil) {
        [funIOSGame calculateGameAwesomeness];
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
