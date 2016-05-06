//
//  CoinGamePad.m
//  DecorationMode
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "CoinGamePad.h"
#import "GamePad.h"

@interface CoinGamePad ()

@property (nonatomic, strong) GamePad *gamePad;

@end

@implementation CoinGamePad

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.gamePad = [[GamePad alloc] init];
    }
    return self;
}

@end
