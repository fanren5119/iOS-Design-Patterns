//
//  CarDirector.h
//  BuliderMode
//
//  Created by 王磊 on 16/5/10.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "CarBuilder.h"

@interface CarDirector : NSObject

- (Car *)createElectricCarsWithBuilder:(CarBuilder *)builder;

- (Car *)createBusWithBuilder:(CarBuilder *)builder;


@end
