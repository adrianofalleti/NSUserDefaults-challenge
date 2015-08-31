//
//  CreateAccountViewController.h
//  NSUserDeafults,Segue and Protocols challenge
//
//  Created by Adriano Falleti on 31/08/15.
//  Copyright (c) 2015 Adriano Falleti. All rights reserved.
//

#import <UIKit/UIKit.h>
//costanti
#define USER_NAME @"username"
#define USER_PASSWORD @"password"










// ora creo un protocollo perchè è l'unico mezzo per tornare dei dati indietro nel navigation controller stack

@protocol CreateAccountViewControllerDelegate <NSObject>

@required

-(void)didCancel;
-(void)didCreateAccount:(NSDictionary *)user;

@end
@interface CreateAccountViewController : UIViewController


@property (strong, nonatomic) IBOutlet UITextField *userNameTextField2;



@property (strong, nonatomic) IBOutlet UITextField *passwordTextField2;


@property (strong, nonatomic) IBOutlet UITextField *confirmPasswordTextField;

@property (weak,nonatomic) id <CreateAccountViewControllerDelegate> delegato;


- (IBAction)creationAccount:(UIButton *)sender;


- (IBAction)cancel:(UIButton *)sender;






@end
