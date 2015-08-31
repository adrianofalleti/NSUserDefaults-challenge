//
//  CreateAccountViewController.m
//  NSUserDeafults,Segue and Protocols challenge
//
//  Created by Adriano Falleti on 31/08/15.
//  Copyright (c) 2015 Adriano Falleti. All rights reserved.
//

#import "CreateAccountViewController.h"

@implementation CreateAccountViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}







- (IBAction)creationAccount:(UIButton *)sender {
    if ([self.passwordTextField2.text isEqualToString:self.confirmPasswordTextField.text]) {
        
        NSDictionary *user = @{USER_NAME : self.userNameTextField2.text , USER_PASSWORD : self.passwordTextField2.text};
        [self.delegato didCreateAccount:user];
        
        
    }
         else {
        UIAlertView *alert = [[UIAlertView  alloc] initWithTitle:@"Error" message:@"Password and second password are not the same" delegate:nil cancelButtonTitle:@"Retry" otherButtonTitles:nil, nil];
        [alert show];
    }
    
    
    
    
    
    
    
    
    
}

- (IBAction)cancel:(UIButton *)sender {
    [self.delegato didCancel];
}

@end

