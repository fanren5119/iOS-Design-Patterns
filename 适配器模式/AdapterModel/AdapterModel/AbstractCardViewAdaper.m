//
//  AbstractCardViewAdaper.m
//  AdapterModel
//
//  Created by 王磊 on 16/3/10.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "AbstractCardViewAdaper.h"

@implementation AbstractCardViewAdaper

- (instancetype)initWithModelData:(id)data
{
    self = [super init];
    if (self) {
        self.data = data;
    }
    return self;
}

- (NSString *)name
{
    return nil;
}

- (UIColor *)lineColor
{
    return nil;
}

- (NSString *)phone
{
    return nil;
}

@end
