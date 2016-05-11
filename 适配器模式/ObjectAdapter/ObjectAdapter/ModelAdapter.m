//
//  ModelAdapter.m
//  ObjectAdapter
//
//  Created by 王磊 on 16/5/10.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ModelAdapter.h"

@implementation ModelAdapter

- (id)initWithModel:(Model *)model
{
    self = [super init];
    if (self) {
        _model = model;
    }
    return self;
}

- (NSString *)name
{
    return self.model.name;
}

- (UIColor *)lineColor
{
    return self.model.lineColor;
}

- (NSString *)phone
{
    return self.model.phone;
}

@end
