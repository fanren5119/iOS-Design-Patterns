//
//  Car.m
//  BuliderMode
//
//  Created by 王磊 on 16/5/10.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "Car.h"

@implementation Car

- (NSString *)description
{
    NSString *engine = NSStringFromCGSize(self.engine);
    NSString *dools = self.doolsColor.description;
    return [NSString stringWithFormat:@"engine = %@，dools = %@, wheels = %d", engine, dools, self.wheelsCount];
}

@end
