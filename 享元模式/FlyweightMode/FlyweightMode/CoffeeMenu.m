//
//  CoffeeMenu.m
//  FlyweightMode
//
//  Created by 王磊 on 16/3/8.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "CoffeeMenu.h"
#import "CoffeeFlavor.h"

@interface CoffeeMenu ()

@property (nonatomic, strong) NSMutableDictionary *menueDic;

@end

@implementation CoffeeMenu

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.menueDic = [NSMutableDictionary dictionary];
    }
    return self;
}

- (CoffeeFlavor *)lookupCoffeeWithName:(NSString *)name
{
    if (self.menueDic[name]) {
        return self.menueDic[name];
    }
    CoffeeFlavor *flavor    = [[CoffeeFlavor alloc] init];
    self.menueDic[name]     = flavor;
    return flavor;
}

@end
