//
//  ViewController.m
//  StrategyMode
//
//  Created by 王磊 on 16/3/10.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"

#import "CustomTextField.h"
#import "RegExCategories.h"
#import "PhoneStrategy.h"
#import "EmailStrategy.h"

@interface ViewController () <UITextFieldDelegate>

@property (nonatomic, strong) CustomTextField   *phoneTextField;
@property (nonatomic, strong) CustomTextField   *emailTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupUI];
}

#pragma -mark setupUI

- (void)setupUI
{
    [self setupPhoneTextField];
    [self setupEmailTextField];
    [self setupCommitButton];
}

- (void)setupPhoneTextField
{
    self.phoneTextField = [[CustomTextField alloc] initWithFrame:CGRectMake(20, 100, self.view.frame.size.width - 40, 30)];
    self.phoneTextField.backgroundColor = [UIColor grayColor];
    self.phoneTextField.placeholder = @"请输入电话号码";
    self.phoneTextField.delegate = self;
    self.phoneTextField.borderStyle = UITextBorderStyleRoundedRect;
    self.phoneTextField.strategy = [[PhoneStrategy alloc] init];
    [self.view addSubview:self.phoneTextField];
}

- (void)setupEmailTextField
{
    self.emailTextField = [[CustomTextField alloc] initWithFrame:CGRectMake(20, 150, self.view.frame.size.width - 40, 30)];
    self.emailTextField.backgroundColor = [UIColor grayColor];
    self.emailTextField.placeholder = @"请输入邮箱";
    self.emailTextField.delegate = self;
    self.emailTextField.borderStyle = UITextBorderStyleRoundedRect;
    self.emailTextField.strategy = [[EmailStrategy alloc] init];
    [self.view addSubview:self.emailTextField];
}

- (void)setupCommitButton
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(20, 200, self.view.frame.size.width - 40, 30);
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"提交" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(respondsToCommitButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}


#pragma -mark Responds

- (void)respondsToCommitButton
{
    [self.view endEditing:YES];
}

#pragma -mark UITextField Delegate

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    CustomTextField *customTF = (CustomTextField *)textField;
    BOOL validate = [customTF validateText];
    if (!validate) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil message:customTF.strategy.errorMessage delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alertView show];
    } else {
        NSLog(@"输入正确");
    }
}


@end
