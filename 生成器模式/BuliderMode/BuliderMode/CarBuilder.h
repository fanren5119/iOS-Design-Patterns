//
//  CarBuilder.h
//  BuliderMode
//
//  Created by 王磊 on 16/5/10.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

@interface CarBuilder : NSObject

@property (nonatomic, strong) Car *car;

- (CarBuilder *)buildNewCar;
- (CarBuilder *)buildEngine:(CGSize)engineSize;
- (CarBuilder *)buildDools:(UIColor *)doolsColor;
- (CarBuilder *)buildWheels:(NSInteger)wheelsCount;

@end
