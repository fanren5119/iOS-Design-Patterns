//
//  MemorandumCenter.m
//  MemorandumMode
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "MemorandumCenter.h"
#import "FastCoder.h"

@implementation MemorandumCenter

+ (void)saveMemorandum:(id <MementoProtocol>)object withKey:(NSString *)key
{
    NSParameterAssert(object);
    NSParameterAssert(key);
    NSData *data = [FastCoder dataWithRootObject:[object currentState]];
    if (data) {
        [[NSUserDefaults standardUserDefaults] setObject:data forKey:key];
    }
}

+ (id)memorandumWithKey:(NSString *)key
{
    NSParameterAssert(key);
    NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    return data ? [FastCoder objectWithData:data] : nil;
}

@end
