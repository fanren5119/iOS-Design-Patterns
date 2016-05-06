//
//  AbstractImplement.h
//  BridgeModeTest
//
//  Created by 王磊 on 16/3/4.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, CommandType) {
    Command_up      = 0,
    Command_down    = 1,
    Command_left    = 2,
    Command_right   = 3,
    Command_A       = 4,
    Command_B       = 5,
    Command_X       = 6,
    Command_O       = 7
};

@interface AbstractImplement : NSObject

- (void)commandWithType:(CommandType)type;

@end
