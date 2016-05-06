//
//  ChainEvent.m
//  ChainMode
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ChainEvent.h"

@implementation ChainEvent

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.information = [NSMutableDictionary dictionary];
    }
    return self;
}

@end
