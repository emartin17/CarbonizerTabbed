//
//  ThirdViewControllerAppearance.m
//  CarbonizerTabbed
//
//  Created by Eric Martin on 3/31/14.
//  Copyright (c) 2014 Martin Developments. All rights reserved.
//

#import "ThirdViewControllerAppearance.h"

@interface ThirdViewControllerAppearance ()

@end

@implementation ThirdViewControllerAppearance

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    flashingOn.on = [[NSUserDefaults standardUserDefaults] boolForKey:@"FlashingOn"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)saveSettings:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setBool:flashingOn.isOn forKey:@"FlashingOn"];
}


@end
