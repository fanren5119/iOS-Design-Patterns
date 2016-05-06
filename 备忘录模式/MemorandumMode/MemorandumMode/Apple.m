//
//  Apple.m
//  MemorandumMode
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "Apple.h"

@implementation Apple

- (id)currentState
{
    return @{@"name" : self.name,
             @"age"  : @(self.age)};
}

- (void)recoverFromState:(id)state
{
    NSDictionary *dictionary = state;
    self.name = dictionary[@"name"];
    self.age = [dictionary[@"age"] integerValue];
}

@end
