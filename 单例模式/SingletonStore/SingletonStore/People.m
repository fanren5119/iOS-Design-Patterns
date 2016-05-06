//
//  People.m
//  SingletonStore
//
//  Created by 王磊 on 16/3/4.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "People.h"

@implementation People

- (id)initWithName:(NSString *)name age:(NSInteger)age
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%p %@ %ld", self, _name, (long)_age];
}

@end
