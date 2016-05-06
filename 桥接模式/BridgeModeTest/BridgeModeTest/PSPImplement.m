//
//  PSPImplement.m
//  BridgeModeTest
//
//  Created by 王磊 on 16/3/4.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "PSPImplement.h"

@implementation PSPImplement

- (void)commandWithType:(CommandType)type
{
    switch (type) {
        case Command_up:
        {
            NSLog(@"PSP up");
        }
            break;
        case Command_down:
        {
            NSLog(@"PSP down");
        }
            break;
        case Command_left:
        {
            NSLog(@"PSP left");
        }
            break;
        case Command_right:
        {
            NSLog(@"PSP right");
        }
            break;
        case Command_A:
        {
            NSLog(@"PSP A");
        }
            break;
        case Command_B:
        {
            NSLog(@"PSP B");
        }
            break;
        case Command_X:
        {
            NSLog(@"PSP X");
        }
            break;
        case Command_O:
        {
            NSLog(@"PSP O");
        }
            break;
        default:
            break;
    }
}


@end
