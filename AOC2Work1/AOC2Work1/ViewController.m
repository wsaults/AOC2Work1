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
    AndroidGame *notSoFunAndroidGame = (AndroidGame *)[GameFactory createNewGameOfType:ANDROID];
    MacGame *greatMacGame = (MacGame *)[GameFactory createNewGameOfType:MAC];
    
    if (funIOSGame != nil) {
        [funIOSGame calculateGameAwesomeness];
    }
    
    if (notSoFunAndroidGame != nil) {
        [notSoFunAndroidGame calculateGameAwesomeness];
    }
    
    if (greatMacGame != nil) {
        [greatMacGame calculateGameAwesomeness];
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
