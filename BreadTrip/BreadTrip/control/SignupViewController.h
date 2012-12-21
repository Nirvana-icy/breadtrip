//
//  SignupViewController.h
//  BreadTrip
//
//  Created by LI Haiyun on 12/20/12.
//  Copyright (c) 2012 LI Haiyun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomerViewController.h"
#import "TPKeyboardAvoidingScrollView.h"


@interface SignupViewController : CustomerViewController<UITextFieldDelegate>{
    
}

@property(nonatomic,weak) IBOutlet UITextField *emailField;
@property(nonatomic,weak) IBOutlet UITextField *userNameField;
@property(nonatomic,weak) IBOutlet UITextField *passwordField;
@property (nonatomic, weak) IBOutlet TPKeyboardAvoidingScrollView *scrollView;

@end
