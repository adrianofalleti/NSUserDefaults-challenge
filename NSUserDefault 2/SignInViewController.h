//
//  SignInViewController.h
//  NSUserDeafults,Segue and Protocols challenge
//
//  Created by Adriano Falleti on 31/08/15.
//  Copyright (c) 2015 Adriano Falleti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#define ARRAY_KEY @"Key"
#import "CreateAccountViewController.h"

@interface SignInViewController : UIViewController <CreateAccountViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UITextField *userNameTextField1;

@property (strong,nonatomic) NSMutableArray *users;

@property (strong, nonatomic) IBOutlet UITextField *passwordTextField1;

@property (nonatomic) BOOL entered;

@property (nonatomic) int counter;

- (IBAction)logIn:(UIButton *)sender;


- (IBAction)createAccount:(UIBarButtonItem *)sender;






@end
