//
//  CustomerViewController.m
//  BreadTrip
//
//  Created by LI Haiyun on 12/20/12.
//  Copyright (c) 2012 LI Haiyun. All rights reserved.
//

#import "CustomerViewController.h"

@interface CustomerViewController ()

@end

@implementation CustomerViewController


-(IBAction) dismissSelfView:(id)sender{
    [self dismissViewControllerAnimated:YES completion:^{
        nil;
    }];
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

@end
