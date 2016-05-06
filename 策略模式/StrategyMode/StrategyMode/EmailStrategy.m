//
//  EmailStrategy.m
//  StrategyMode
//
//  Created by 王磊 on 16/3/10.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "EmailStrategy.h"
#import "RegExCategories.h"

@implementation EmailStrategy

- (BOOL)validateWithTextField:(UITextField *)textField
{
    NSString *string = textField.text;
    if (string.length <= 0) {
        self.errorMessage = @"请输入邮箱";
    } else {
        BOOL isMatch = [string isMatch:RX(@"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}")];
        if (!isMatch) {
            self.errorMessage = @"请输入正确的邮箱";
        } else {
            self.errorMessage = nil;
        }
    }
    return self.errorMessage == nil ? YES : NO;
}

@end
