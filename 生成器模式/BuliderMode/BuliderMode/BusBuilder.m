//
//  BusBuilder.m
//  BuliderMode
//
//  Created by 王磊 on 16/5/10.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "BusBuilder.h"

@implementation BusBuilder

- (CarBuilder *)buildEngine:(CGSize)engineSize
{
    self.car.engine = engineSize;
    return self;
}


- (CarBuilder *)buildDools:(UIColor *)doolsColor
{
    self.car.doolsColor = doolsColor;
    return self;
}

- (CarBuilder *)buildWheels:(NSInteger)wheelsCount
{
    self.car.wheelsCount = wheelsCount;
    return self;
}

@end
