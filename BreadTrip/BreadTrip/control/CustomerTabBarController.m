//
//  CustomerTabBarController.m
//  BreadTrip
//
//  Created by LI Haiyun on 12/19/12.
//  Copyright (c) 2012 LI Haiyun. All rights reserved.
//

#import "CustomerTabBarController.h"
#import "UnLoginViewController.h"

@interface CustomerTabBarController ()

@end

@implementation CustomerTabBarController
@synthesize tabBarView;



- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [tabBarView setFrame:CGRectMake(0, 430, 320, 49)];
    [self.view addSubview:tabBarView];
    
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)hideExistingTabBar
{
	for(UIView *view in self.view.subviews)
	{
		if([view isKindOfClass:[UITabBar class]])
		{
			view.hidden = YES;
			break;
		}
	}
}
@end
