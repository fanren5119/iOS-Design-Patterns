//
//  CheatGamePad.h
//  DecorationMode
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CheatGamePad : NSObject

- (void)up;
- (void)down;
- (void)left;
- (void)right;

- (void)commandA;
- (void)commandB;
- (void)commandX;
- (void)commandY;

- (void)select;
- (void)start;

- (void)cheat;

@end
