//
//  FactoryManager.h
//  AbstractFactory
//
//  Created by 王磊 on 16/3/3.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Factory.h"

typedef NS_ENUM(NSInteger, FactoryType) {
    AppleFactoryType    = 0,
    GooleFactoryType    = 1
};

@interface FactoryManager : NSObject

+ (Factory *)createFactoryWithType:(FactoryType)type;

@end
