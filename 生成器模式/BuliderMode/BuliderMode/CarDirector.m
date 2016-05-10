//
//  CarDirector.m
//  BuliderMode
//
//  Created by 王磊 on 16/5/10.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "CarDirector.h"
#import "EleticCarBuilder.h"
#import "BusBuilder.h"

@implementation CarDirector

- (Car *)createElectricCarsWithBuilder:(CarBuilder *)builder
{
    [builder buildNewCar];
    [builder buildEngine:CGSizeMake(100, 100)];
    [builder buildDools:[UIColor redColor]];
    [builder buildWheels:2];
    return builder.car;
}

- (Car *)createBusWithBuilder:(CarBuilder *)builder
{
    [builder buildNewCar];
    [builder buildEngine:CGSizeMake(200, 200)];
    [builder buildDools:[UIColor blueColor]];
    [builder buildWheels:4];
    return builder.car;
}

@end
