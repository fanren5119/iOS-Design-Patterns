//
//  ShapeMaker.m
//  OutwardMode
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ShapeMaker.h"

#import "CircleShape.h"
#import "Reatangle.h"

@implementation ShapeMaker

+ (void)drawCircle:(NSInteger)radius
{
    CircleShape *circle = [[CircleShape alloc] init];
    circle.radius = radius;
    [circle draw];
}

+ (void)drawReatangle:(CGFloat)width height:(CGFloat)height
{
    //画一个矩形
    Reatangle *reatangle = [[Reatangle alloc] init];
    reatangle.width = width;
    reatangle.height = height;
    [reatangle draw];
}

@end
