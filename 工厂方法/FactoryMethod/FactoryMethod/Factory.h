//
//  Factory.h
//  FactoryMethod
//
//  Created by 王磊 on 16/5/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Device.h"

@interface Factory : NSObject

- (Device *)createDevice;

@end
