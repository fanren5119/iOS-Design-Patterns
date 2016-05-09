//
//  FactoryManager.m
//  AbstractFactory
//
//  Created by 王磊 on 16/3/3.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "FactoryManager.h"
#import "AppleFactory.h"
#import "GoogleFactory.h"

@implementation FactoryManager

+ (Factory *)createFactoryWithType:(FactoryType)type
{
    Factory *factory = nil;
    switch (type) {
        case AppleFactoryType:
        {
            factory = [[AppleFactory alloc] init];
        }
            break;
        case GooleFactoryType:
        {
            factory = [[GoogleFactory alloc] init];
        }
            break;
        default:
            break;
    }
    return factory;
}

@end
