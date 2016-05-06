//
//  AbstractSystem.h
//  BridgeModeTest
//
//  Created by 王磊 on 16/3/4.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractImplement.h"

@interface AbstractSystem : NSObject

@property (nonatomic, strong) AbstractImplement *implement;

- (void)loadSystem;

- (void)command_up;
- (void)command_down;
- (void)command_left;
- (void)command_right;
- (void)command_A;
- (void)command_B;

@end
