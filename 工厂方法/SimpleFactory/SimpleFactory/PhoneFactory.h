//
//  PhoneFactory.h
//  SimpleFactory
//
//  Created by 王磊 on 16/3/3.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseDevice.h"

typedef NS_ENUM(NSInteger, PhoneType) {
    iPhone      = 0,
    Android     = 1,
    Nokia       = 2
};

@interface PhoneFactory : NSObject

+ (BaseDevice <PhoneProtocol> *)createDeviceWithPhoneType:(PhoneType)type;

@end
