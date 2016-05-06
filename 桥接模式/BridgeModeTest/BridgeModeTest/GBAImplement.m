//
//  GBAImplement.m
//  BridgeModeTest
//
//  Created by 王磊 on 16/3/4.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "GBAImplement.h"

@implementation GBAImplement

- (void)commandWithType:(CommandType)type
{
    switch (type) {
        case Command_up:
        {
            NSLog(@"GBA up");
        }
            break;
        case Command_down:
        {
            NSLog(@"GBA down");
        }
            break;
        case Command_left:
        {
            NSLog(@"GBA left");
        }
            break;
        case Command_right:
        {
            NSLog(@"GBA right");
        }
            break;
        case Command_A:
        {
            NSLog(@"GBA A");
        }
            break;
        case Command_B:
        {
            NSLog(@"GBA B");
        }
            break;
        default:
            break;
    }
}


@end
