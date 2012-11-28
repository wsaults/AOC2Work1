//
//  ViewController.m
//  AOC2Work1
//
//  Created by Will Saults on 11/26/12.
//  Copyright (c) 2012 Fullsail. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    IBOutlet UILabel *titleLabel;
    IBOutlet UILabel *platformLabel;
    IBOutlet UILabel *ratingLabel;
    IBOutlet UISegmentedControl *gamePlatformSelector;
}

-(void)layoutSubviews;
-(IBAction)changedPlatform:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self layoutSubviews];
}

-(void)layoutSubviews {
    NSInteger rating;
    switch ([gamePlatformSelector selectedSegmentIndex]) {
        case IOS:
        {
            iOSGame *funIOSGame = (iOSGame*)[GameFactory createNewGameOfType:IOS];
            if (funIOSGame != nil) {
                rating = [funIOSGame calculateGameAwesomenessWithType:IOS gameTitle:[funIOSGame gameTitle] gameRating:[funIOSGame gameRating]];
                
                [titleLabel setText:[funIOSGame gameTitle]];
                [platformLabel setText:[NSString stringWithFormat:@"Rating: %@",[funIOSGame platform]]];
                [ratingLabel setText:[NSString stringWithFormat:@"Calculated Rating: %i",rating]];
            }
            break;
        }
        case ANDROID:
        {
            AndroidGame *notSoFunAndroidGame = (AndroidGame *)[GameFactory createNewGameOfType:ANDROID];
            if (notSoFunAndroidGame != nil) {
                rating = [notSoFunAndroidGame calculateGameAwesomenessWithType:ANDROID gameTitle:[notSoFunAndroidGame gameTitle] gameRating:[notSoFunAndroidGame gameRating]];
                
                [titleLabel setText:[notSoFunAndroidGame gameTitle]];
                [platformLabel setText:[NSString stringWithFormat:@"Rating: %@",[notSoFunAndroidGame platform]]];
                [ratingLabel setText:[NSString stringWithFormat:@"Calculated Rating: %i",rating]];
            }
            break;
        }
        case MAC:
        {
            MacGame *greatMacGame = (MacGame *)[GameFactory createNewGameOfType:MAC];
            if (greatMacGame != nil) {
                rating = [greatMacGame calculateGameAwesomenessWithType:MAC gameTitle:[greatMacGame gameTitle] gameRating:[greatMacGame gameRating]];
                
                [titleLabel setText:[greatMacGame gameTitle]];
                [platformLabel setText:[NSString stringWithFormat:@"Rating: %@",[greatMacGame platform]]];
                [ratingLabel setText:[NSString stringWithFormat:@"Calculated Rating: %i",rating]];
            }
            break;
        }
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)changedPlatform:(id)sender {
    [self layoutSubviews];
}

@end
