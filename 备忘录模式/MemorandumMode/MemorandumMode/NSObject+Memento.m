//
//  NSObject+Memento.m
//  MemorandumMode
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "NSObject+Memento.h"
#import "MemorandumCenter.h"
#import "MementoProtocol.h"

@implementation NSObject (Memento)

- (void)saveMementoWithKey:(NSString *)key
{
    id <MementoProtocol> obj = (id <MementoProtocol>)self;
    if ([obj respondsToSelector:@selector(currentState)]) {
        [MemorandumCenter saveMemorandum:obj withKey:key];
    }
}

- (void)recoverStateWithKey:(NSString *)key
{
    id state                 = [MemorandumCenter memorandumWithKey:key];
    id <MementoProtocol> obj = (id <MementoProtocol>)self;
    if ([obj respondsToSelector:@selector(recoverFromState:)]) {
        [obj recoverFromState:state];
    }
}

@end
