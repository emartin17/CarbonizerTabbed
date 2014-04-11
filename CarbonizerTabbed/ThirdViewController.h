//
//  ThirdViewController.h
//  CarbonizerTabbed
//
//  Created by Eric Martin on 3/4/14.
//  Copyright (c) 2014 Martin Developments. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UITableViewController <UIAlertViewDelegate>



{
    IBOutlet UISwitch *majorSharpsOn;
    IBOutlet UISwitch *majorFlatsOn;
    IBOutlet UISwitch *minorSharpsOn;
    IBOutlet UISwitch *minorFlatsOn;
    IBOutlet UISwitch *timerOn;

}

@property (strong, nonatomic) UISwitch *lastToggle;

-(IBAction)saveSettings:(id)sender;
-(BOOL)nullSetCheck;

@end
