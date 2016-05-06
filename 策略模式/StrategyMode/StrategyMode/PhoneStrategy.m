//
//  PhoneStrategy.m
//  StrategyMode
//
//  Created by 王磊 on 16/3/10.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "PhoneStrategy.h"
#import "RegExCategories.h"

@implementation PhoneStrategy

- (BOOL)validateWithTextField:(UITextField *)textField
{
    NSString *string = textField.text;
    if (string.length <= 0) {
        self.errorMessage = @"请输入电话号码";
    } else {
        BOOL isMatch = [string isMatch:RX(@"^((13[0-9])|(15[^4,\\D])|(18[0,0-9]))\\d{8}$")];
        if (!isMatch) {
            self.errorMessage = @"请输入正确的电话号码";
        } else {
            self.errorMessage = nil;
        }
    }
    return self.errorMessage == nil ? YES : NO;
}

@end
