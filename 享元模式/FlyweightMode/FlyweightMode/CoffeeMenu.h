//
//  CoffeeMenu.h
//  FlyweightMode
//
//  Created by 王磊 on 16/3/8.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>


@class CoffeeFlavor;

@interface CoffeeMenu : NSObject

- (CoffeeFlavor *)lookupCoffeeWithName:(NSString *)name;

@end
