//
//  BaseObjectCopy.m
//  NSCopyDemo
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "BaseObjectCopy.h"

@implementation BaseObjectCopy

- (id)copyWithZone:(NSZone *)zone
{
    BaseObjectCopy *object = [[self class] allocWithZone:zone];
    [self copyWithObject:object];
    return object;
}

- (void)copyWithObject:(id)object
{
    
}

@end
