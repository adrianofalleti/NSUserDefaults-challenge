//
//  ViewController.m
//  NSUserDeafults,Segue and Protocols challenge
//
//  Created by Adriano Falleti on 31/08/15.
//  Copyright (c) 2015 Adriano Falleti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.userNameLabel.text = self.userName;
    self.passwordLabel.text = self.passWord;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)signOut:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
