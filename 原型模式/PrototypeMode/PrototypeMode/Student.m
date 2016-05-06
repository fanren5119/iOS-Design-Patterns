//
//  Student.m
//  PrototypeMode
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "Student.h"

@implementation Student

- (id)clone
{
    Student *student        = [[[self class] alloc] init];
    student.name            = self.name;
    student.age             = self.age;
    student.address         = self.address;
    student.totalFraction   = self.totalFraction;
    
    return student;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"student:%p name: %@ ,age: %@, address: %@, totalFraction:%@", self, self.name, self.age, self.address, self.totalFraction];
}

@end
