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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)saveSettings:(id)sender
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
