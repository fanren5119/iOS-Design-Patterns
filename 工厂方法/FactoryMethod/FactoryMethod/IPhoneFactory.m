//
//  IPhoneFactory.m
//  FactoryMethod
//
//  Created by 王磊 on 16/5/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "IPhoneFactory.h"
#import "IPhoneDevice.h"

@implementation IPhoneFactory

- (Device *)createDevice
{
    return [[IPhoneDevice alloc] init];
}

@end
