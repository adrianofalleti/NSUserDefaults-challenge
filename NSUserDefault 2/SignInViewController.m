//
//  SignInViewController.m
//  NSUserDeafults,Segue and Protocols challenge
//
//  Created by Adriano Falleti on 31/08/15.
//  Copyright (c) 2015 Adriano Falleti. All rights reserved.
//

#import "SignInViewController.h"


@implementation SignInViewController
//lazy instantiation
-(NSMutableArray *)users {
    if (!_users) {
        _users = [[NSMutableArray alloc] init];
    }
    return _users;
}



-(void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.users = [[[NSUserDefaults standardUserDefaults] arrayForKey:ARRAY_KEY] mutableCopy];
   
    
}




- (IBAction)logIn:(UIButton *)sender {
    for (NSDictionary *utente in self.users) {
        if ([utente[USER_NAME] isEqualToString:self.userNameTextField1.text] && [utente[USER_PASSWORD] isEqualToString:self.passwordTextField1.text] ) {
            [self performSegueWithIdentifier:@"toController" sender:sender];
            break;
        }
        else {
            self.counter += 1;
        }
        
    }
    if ([self.users count] == self.counter) {
        UIAlertView *alert3 = [[UIAlertView alloc] initWithTitle:@"Error" message:@"You didn't enter either the passowrd or the username" delegate:nil cancelButtonTitle:@"Retry" otherButtonTitles:nil, nil];
        [alert3 show];
        
        
    }
        }//fine IBAction




    
    
    
    


- (IBAction)createAccount:(UIBarButtonItem *)sender {
    
    [self performSegueWithIdentifier:@"toCreateViewController" sender:sender];
    
    
}
 //preparation for segue
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([sender isKindOfClass:[UIBarButtonItem class]])
        
     {
        
        if ([segue.destinationViewController isKindOfClass:[CreateAccountViewController class]]) {
            
            CreateAccountViewController *viewControllerAccountCreation = segue.destinationViewController;
            
            viewControllerAccountCreation.delegato = self;
            
            
            
        }
        
        
        
        
        
    }
    
    //preparazione seconda segue
    if ([sender isKindOfClass:[UIButton class]]) {
        if ([segue.destinationViewController isKindOfClass:[ViewController class]]) {
            ViewController *viewController = segue.destinationViewController;
            viewController.userName = self.userNameTextField1.text;
            viewController.passWord = self.passwordTextField1.text;
            
        }
        
        
        
        
        
    }
    
    
}


#pragma mark CreateAccountViewControllerDelegate

-(void)didCancel {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

-(void)didCreateAccount:(NSDictionary *) user {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    // prelevare l'array
   
    [self.users addObject:user];
    
    [[NSUserDefaults standardUserDefaults] setObject:self.users forKey:ARRAY_KEY];
    
    [[NSUserDefaults standardUserDefaults] synchronize];
    
//    NSLog(@"%@",[[NSUserDefaults standardUserDefaults] arrayForKey:ARRAY_KEY]);
    

    
    
}

@end
