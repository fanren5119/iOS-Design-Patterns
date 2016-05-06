//
//  CoffeeShop.h
//  FlyweightMode
//
//  Created by 王磊 on 16/3/8.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CoffeeShop : NSObject

- (void)takeOrder:(NSString *)coffeeName table:(int)table;

- (void)service;

@end
