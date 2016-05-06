//
//  GamePad+Coin.m
//  DecorationMode
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "GamePad+Coin.h"
#import <objc/runtime.h>

static const NSString *kCoinsString = @"CoinsString";

@implementation GamePad (Coin)

- (void)setCoins:(NSInteger)coins
{
    objc_setAssociatedObject(self, (__bridge const void *)(kCoinsString), @(coins), OBJC_ASSOCIATION_ASSIGN);
}

- (NSInteger)coins
{
    NSNumber *num = objc_getAssociatedObject(self, (__bridge const void *)(kCoinsString));
    return [num integerValue];
}

@end
