//
//  ThirdViewController.m
//  CarbonizerTabbed
//
//  Created by Eric Martin on 3/4/14.
//  Copyright (c) 2014 Martin Developments. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end


@implementation ThirdViewController
@synthesize lastToggle;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(BOOL)nullSetCheck
{
    if (majorSharpsOn.isOn || majorFlatsOn.isOn || minorSharpsOn.isOn || minorFlatsOn.isOn || self.lastToggle == timerOn)
    {
        return TRUE;
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle: @"No Keys Enabled" message: @"One set of keys must be turned on." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        return FALSE;
    }
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    [self.lastToggle setOn:TRUE animated:TRUE];
}

-(IBAction)saveSettings:(id)sender
{
    self.lastToggle = sender;
    if ([self nullSetCheck])
    {
        [[NSUserDefaults standardUserDefaults]
         setBool:majorSharpsOn.isOn forKey:@"MajorSharpsOn"];
        [[NSUserDefaults standardUserDefaults]
         setBool:majorFlatsOn.isOn forKey:@"MajorFlatsOn"];
        [[NSUserDefaults standardUserDefaults]
         setBool:minorSharpsOn.isOn forKey:@"MinorSharpsOn"];
        [[NSUserDefaults standardUserDefaults]
         setBool:minorFlatsOn.isOn forKey:@"MinorFlatsOn"];
        [[NSUserDefaults standardUserDefaults]
         setBool:timerOn.isOn forKey:@"TimerEnabled"];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [NSUserDefaults standardUserDefaults];
    
    majorSharpsOn.on = [[NSUserDefaults standardUserDefaults]
                        boolForKey:@"MajorSharpsOn"];
    majorFlatsOn.on = [[NSUserDefaults standardUserDefaults]
                       boolForKey:@"MajorFlatsOn"];
    minorSharpsOn.on = [[NSUserDefaults standardUserDefaults]
                        boolForKey:@"MinorSharpsOn"];
    minorFlatsOn.on = [[NSUserDefaults standardUserDefaults]
                       boolForKey:@"MinorFlatsOn"];
    timerOn.on = [[NSUserDefaults standardUserDefaults]
                  boolForKey:@"TimerEnabled"];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
