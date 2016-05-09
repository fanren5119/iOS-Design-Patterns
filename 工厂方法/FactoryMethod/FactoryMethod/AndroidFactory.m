//
//  AndroidFactory.m
//  FactoryMethod
//
//  Created by 王磊 on 16/5/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "AndroidFactory.h"
#import "AndoridDevice.h"

@implementation AndroidFactory

- (Device *)createDevice
{
    return [[AndoridDevice alloc] init];
}

@end
