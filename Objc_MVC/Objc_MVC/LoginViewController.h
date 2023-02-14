//
//  LoginViewController.h
//  Objc_MVC
//
//  Created by Samith Wijesinghe on 2023-02-14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoginViewController : NSObject

@property (nonatomic, weak) IBOutlet UITextFiled *emailField;
@property (nonatomic, weak) IBOutlet UITextFiled *passwordField;

- (IBAction)LoginBtnClicked:(id)sender;

@end

NS_ASSUME_NONNULL_END
