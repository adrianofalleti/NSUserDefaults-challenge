//
//  ViewController.h
//  NSUserDeafults,Segue and Protocols challenge
//
//  Created by Adriano Falleti on 31/08/15.
//  Copyright (c) 2015 Adriano Falleti. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController


@property (strong, nonatomic) IBOutlet UILabel *userNameLabel;


@property (strong, nonatomic) IBOutlet UILabel *passwordLabel;

@property (strong,nonatomic) NSString *userName;

@property (strong,nonatomic) NSString *passWord;


- (IBAction)signOut:(UIButton *)sender;


@end

