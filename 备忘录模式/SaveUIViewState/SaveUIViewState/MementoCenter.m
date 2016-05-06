//
//  MementoCenter.m
//  SaveUIViewState
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "MementoCenter.h"
#import "FastCoder.h"

@implementation MementoCenter

+ (void)saveMemento:(id <MementoProtocol>)value withKey:(NSString *)key
{
    NSParameterAssert(value);
    NSParameterAssert(key);
    id data = [value currentState];
    NSData *tempData = [FastCoder dataWithRootObject:data];
    if (tempData) {
        [[NSUserDefaults standardUserDefaults] setObject:tempData forKey:key];
    }
}

+ (id)mementoWithKey:(NSString *)key
{
    NSParameterAssert(key);
    NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    if (data) {
        return [FastCoder objectWithData:data];
    }
    return nil;
}

@end
