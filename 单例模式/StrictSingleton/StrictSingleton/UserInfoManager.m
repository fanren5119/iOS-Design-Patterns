//
//  UserInfoManager.m
//  StrictSingleton
//
//  Created by 王磊 on 16/3/4.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "UserInfoManager.h"

static UserInfoManager *manager = nil;

@implementation UserInfoManager

+ (instancetype)shareManager
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = (UserInfoManager *)@"UserInfoManager";
        manager = [[UserInfoManager alloc] init];
    });
    
    NSString *classString = NSStringFromClass([self class]);
    if (![classString isEqualToString:@"UserInfoManager"]) {
        NSParameterAssert(nil);
    }
    return manager;
}

- (instancetype)init
{
    NSString *string = (NSString *)manager;
    if ([string isKindOfClass:[NSString class]] && [string isEqualToString:@"UserInfoManager"]) {
        self = [super init];
        if (self) {
            NSString *classString = NSStringFromClass([self class]);
            if (![classString isEqualToString:@"UserInfoManager"]) {
                NSParameterAssert(nil);
            }
        }
        return self;
    }
    return nil;
}

@end
