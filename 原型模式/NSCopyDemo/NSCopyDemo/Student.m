//
//  Student.m
//  NSCopyDemo
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void)copyWithObject:(Student *)object
{
    object.name             = self.name;
    object.age              = self.age;
    object.address          = self.address;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"student: %p, name: %@, age: %@, address: %@", self, self.name, self.age, self.address];
}

@end
