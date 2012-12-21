//
//  SignupViewController.m
//  BreadTrip
//
//  Created by LI Haiyun on 12/20/12.
//  Copyright (c) 2012 LI Haiyun. All rights reserved.
//

#import "SignupViewController.h"

@interface SignupViewController (){
    NSString *isDoneFromKeyboardFlag;
}

@end

@implementation SignupViewController
@synthesize emailField;
@synthesize userNameField;
@synthesize passwordField;




- (void)viewDidLoad
{
    [super viewDidLoad];
    emailField.delegate=self;
    userNameField.delegate=self;
    passwordField.delegate=self;
    isDoneFromKeyboardFlag=@"NO";

	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (BOOL)textFieldShouldReturn:(UITextField *)textField{

    
    if(textField.tag==0){
        
        [emailField resignFirstResponder];
        [userNameField becomeFirstResponder];
    }
    if(textField.tag==1){
        
        [userNameField resignFirstResponder];
        [passwordField becomeFirstResponder];
    }
    if(textField.tag==2){
        
        [passwordField resignFirstResponder];
   
    }

    return TRUE;
}
//
////implement the deleaget of the textFiled method
//- (void)textFieldDidBeginEditing:(UITextField *)textField
//{
//    
//    NSLog(@"-------------@%@",isDoneFromKeyboardFlag);
//    if ([isDoneFromKeyboardFlag isEqualToString:@"NO"]) {
//        
//        isDoneFromKeyboardFlag=@"YES";
//        NSTimeInterval animationDuration = 0.30f;
//        CGRect frame = self.view.frame;
//        frame.origin.y -=65;
//        frame.size.height +=65;
//        self.view.frame = frame;
//        [UIView beginAnimations:@"ResizeView" context:nil];
//        [UIView setAnimationDuration:animationDuration];
//        self.view.frame = frame;
//        [UIView commitAnimations];
//        
//    }
//    
//}




@end
