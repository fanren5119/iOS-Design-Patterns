//
//  PSPSystem.m
//  BridgeModeTest
//
//  Created by 王磊 on 16/3/4.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "PSPSystem.h"

@implementation PSPSystem

- (void)loadSystem
{
    NSLog(@"PSP System");
}

- (void)command_X
{
    [self.implement commandWithType:Command_X];
}
- (void)command_O
{
    [self.implement commandWithType:Command_O];
}

@end
