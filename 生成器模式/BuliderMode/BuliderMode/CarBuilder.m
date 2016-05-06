//
//  CarBuilder.m
//  BuliderMode
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "CarBuilder.h"

@implementation CarBuilder

- (void)buildAllPart
{
    [self.engine build];
    [self.wheels build];
    [self.dools build];
    
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    dictionary[@"engine"]           = [self.engine infomation];
    dictionary[@"wheels"]           = [self.wheels information];
    dictionary[@"dools"]            = [self.dools information];
    self.carInfo                    = dictionary;
}

@end
