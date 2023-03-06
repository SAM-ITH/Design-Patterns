//
//  LoginViewController.h
//  Objc_MVC
//
//  Created by Samith Wijesinghe on 2023-02-14.
//


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface LoginViewController : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *emailField;
@property (nonatomic, weak) IBOutlet UITextField *passwordField;

- (IBAction)LoginBtnClicked:(id)sender;

@end

