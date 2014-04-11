//
//  KeysetsTableViewController.m
//  CarbonizerTabbed
//
//  Created by Eric Martin on 3/31/14.
//  Copyright (c) 2014 Martin Developments. All rights reserved.
//

#import "KeysetsTableViewController.h"

@interface KeysetsTableViewController ()

@end

@implementation KeysetsTableViewController

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)tableview:(UITableView *)tableview titleForHeaderInSection:(NSInteger)section
{
    return [NSString stringWithFormat:@"%@ %ld",self.titleText,(long)section];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
