//
//  CheatGamePad.m
//  DecorationMode
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "CheatGamePad.h"
#import "GamePad.h"

@interface CheatGamePad ()

@property (nonatomic, strong) GamePad   *gamePad;

@end

@implementation CheatGamePad

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.gamePad = [[GamePad alloc] init];
    }
    return self;
}

- (void)up
{
    [self.gamePad up];
}

- (void)down
{
    [self.gamePad down];
}

- (void)left
{
    [self.gamePad left];
}

- (void)right
{
    [self.gamePad right];
}

- (void)commandA
{
    [self.gamePad commandA];
}

- (void)commandB
{
    [self.gamePad commandB];
}

- (void)commandX
{
    [self.gamePad commandX];
}

- (void)commandY
{
    [self.gamePad commandY];
}

- (void)select
{
    [self.gamePad select];
}

- (void)start
{
    [self.gamePad start];
}

- (void)cheat
{
    [self up];
    [self down];
    [self up];
    [self down];
    [self left];
    [self right];
    [self left];
    [self right];
    [self commandA];
    [self commandB];
    [self commandA];
    [self commandB];
}

@end
