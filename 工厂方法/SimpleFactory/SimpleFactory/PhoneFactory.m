//
//  PhoneFactory.m
//  SimpleFactory
//
//  Created by 王磊 on 16/3/3.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "PhoneFactory.h"
#import "IPhoneDevice.h"
#import "AndroidDevice.h"
#import "NokiaDevice.h"

@implementation PhoneFactory

+ (BaseDevice <PhoneProtocol> *)createDeviceWithPhoneType:(PhoneType)type
{
    BaseDevice <PhoneProtocol> *device = nil;
    switch (type) {
        case iPhone: {
            device = [[IPhoneDevice alloc] init];
        }
            break;
        case Android: {
            device = [[AndroidDevice alloc] init];
        }
            break;
        case Nokia: {
            device = [[NokiaDevice alloc] init];
        }
            break;
        default:
            break;
    }
    return device;
}

@end
