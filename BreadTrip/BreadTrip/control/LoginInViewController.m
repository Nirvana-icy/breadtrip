//
//  LoginInViewController.m
//  BreadTrip
//
//  Created by LI Haiyun on 12/20/12.
//  Copyright (c) 2012 LI Haiyun. All rights reserved.
//

#import "LoginInViewController.h"

@interface LoginInViewController (){
    int count;
}

@end

@implementation LoginInViewController
@synthesize userNameField;
@synthesize passwordField;

- (void)viewDidLoad
{
    [super viewDidLoad];
    userNameField.delegate=self;
    passwordField.delegate=self;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    if(textField.tag==0){
        
        [userNameField resignFirstResponder];
        [passwordField becomeFirstResponder];
    }
    if(textField.tag==1){
        
        [passwordField resignFirstResponder];
     
    }

    
    return TRUE;
}




@end
