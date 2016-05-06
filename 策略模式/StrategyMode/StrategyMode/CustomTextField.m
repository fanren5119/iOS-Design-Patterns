//
//  CustomTextField.m
//  StrategyMode
//
//  Created by 王磊 on 16/3/10.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "CustomTextField.h"

@implementation CustomTextField

- (BOOL)validateText;
{
    return [self.strategy validateWithTextField:self];
}

@end
