//
//  GamePad.h
//  DecorationMode
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

/*
    被装饰的类
 */

#import <Foundation/Foundation.h>

@interface GamePad : NSObject

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

@end
