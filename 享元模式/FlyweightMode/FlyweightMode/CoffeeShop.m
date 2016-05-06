//
//  CoffeeShop.m
//  FlyweightMode
//
//  Created by 王磊 on 16/3/8.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "CoffeeShop.h"
#import "CoffeeMenu.h"

@interface CoffeeShop ()

@property (nonatomic, strong) CoffeeMenu            *menu;
@property (nonatomic, strong) NSMutableDictionary   *order;

@end

@implementation CoffeeShop

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.menu = [[CoffeeMenu alloc] init];
        self.order = [NSMutableDictionary dictionary];
    }
    return self;
}

- (void)takeOrder:(NSString *)coffeeName table:(int)table
{
    CoffeeFlavor *flavor = [self.menu lookupCoffeeWithName:coffeeName];
    [self.order setObject:flavor forKey:@(table)];
}

- (void)service
{
    NSArray *allKeys = [self.order allKeys];
    for (NSNumber *table in allKeys) {
        NSLog(@"table:%@, coffeeFlavor:%@", table, self.order[table]);
    }
}

@end
