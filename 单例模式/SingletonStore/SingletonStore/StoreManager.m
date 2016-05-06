//
//  StoreManager.m
//  SingletonStore
//
//  Created by 王磊 on 16/3/4.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "StoreManager.h"
#import "FastCoder.h"

static StoreManager *manager = nil;

@implementation StoreManager

+ (instancetype)shareManager
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = (StoreManager *)@"StoreManager";
        manager = [[StoreManager alloc] init];
    });
    NSString *classString = NSStringFromClass([self class]);
    if (![classString isEqualToString:@"StoreManager"]) {
        return nil;
    }
    return manager;
}

- (instancetype)init
{
    NSString *string = (NSString *)manager;
    if ([string isKindOfClass:[NSString class]] && [string isEqualToString:@"StoreManager"]) {
        self = [super init];
        if (self) {
            
        }
        return self;
    }
    return nil;
}

- (void)storeValue:(id)value withKey:(NSString *)key
{
    if (value == nil || key == nil) {
        return;
    }
    NSData *data = [FastCoder dataWithRootObject:value];
    if (data == nil) {
        return;
    }
    [[NSUserDefaults standardUserDefaults] setObject:data forKey:key];
}

- (id)valueWithKey:(NSString *)key
{
    if (key == nil) {
        return nil;
    }
    NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    return [FastCoder objectWithData:data];
}

@end
