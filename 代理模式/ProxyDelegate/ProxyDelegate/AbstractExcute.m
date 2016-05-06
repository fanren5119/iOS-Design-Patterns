//
//  AbstractExcute.m
//  ProxyDelegate
//
//  Created by 王磊 on 16/3/4.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "AbstractExcute.h"

static AbstractExcute *excute = nil;

@implementation AbstractExcute

+ (instancetype)shareInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        excute = [[AbstractExcute alloc] init];
    });
    return excute;
}

- (void)nullExcute:(NSString *)userInfo
{
    NSLog(@"%@", userInfo);
}

@end
