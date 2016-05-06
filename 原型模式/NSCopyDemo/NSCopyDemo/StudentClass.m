//
//  StudentClass.m
//  NSCopyDemo
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "StudentClass.h"

@implementation StudentClass

- (void)copyWithObject:(StudentClass *)object
{
    object.name = self.name;
    object.students = [[NSArray alloc] initWithArray:self.students copyItems:YES];
}

@end
