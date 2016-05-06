//
//  Invoker.h
//  CommandMode
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"

@interface Invoker : NSObject

+ (instancetype)shareInstance;

- (void)addCommend:(id <Command>)command;

- (void)rollBack;

@end
