//
//  NSObject+Memento.m
//  SaveUIViewState
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "NSObject+Memento.h"
#import "MementoProtocol.h"
#import "MementoCenter.h"

@implementation NSObject (Memento)

- (void)saveStateWithKey:(NSString *)key
{
    NSParameterAssert(key);
    id<MementoProtocol> obj = (id <MementoProtocol>)self;
    if ([obj respondsToSelector:@selector(currentState)]) {
        [MementoCenter saveMemento:obj withKey:key];
    }
}

- (void)recoveStateWithKey:(NSString *)key
{
    NSParameterAssert(key);
    id <MementoProtocol> obj = (id <MementoProtocol>) self;
    if ([obj respondsToSelector:@selector(recoverFromStata:)]) {
        id state = [MementoCenter mementoWithKey:key];
        [obj recoverFromStata:state];
    }
}

@end
