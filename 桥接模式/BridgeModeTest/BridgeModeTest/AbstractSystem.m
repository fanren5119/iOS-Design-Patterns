//
//  AbstractSystem.m
//  BridgeModeTest
//
//  Created by 王磊 on 16/3/4.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "AbstractSystem.h"

@implementation AbstractSystem

- (void)loadSystem
{
    
}

- (void)command_up
{
    [self.implement commandWithType:Command_up];
}

- (void)command_down
{
    [self.implement commandWithType:Command_down];
}

- (void)command_left
{
    [self.implement commandWithType:Command_left];
}
- (void)command_right
{
    [self.implement commandWithType:Command_right];
}
- (void)command_A
{
    [self.implement commandWithType:Command_A];
}

- (void)command_B
{
    [self.implement commandWithType:Command_B];
}

@end
