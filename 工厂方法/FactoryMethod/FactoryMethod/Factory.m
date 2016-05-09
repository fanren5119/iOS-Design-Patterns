//
//  Factory.m
//  FactoryMethod
//
//  Created by 王磊 on 16/5/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "Factory.h"

@implementation Factory

- (Device *)createDevice
{
    return [[Device alloc] init];
}

@end
