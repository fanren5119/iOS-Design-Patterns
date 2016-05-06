//
//  Invoker.m
//  CommandMode
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "Invoker.h"
#import "Command.h"

static Invoker *invoker = nil;

@interface Invoker ()

@property (nonatomic, strong) NSMutableArray *queueArray;

@end

@implementation Invoker

+ (instancetype)shareInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        invoker = [[Invoker alloc] init];
        invoker.queueArray = [NSMutableArray array];
    });
    return invoker;
}

- (void)addCommend:(id <Command>)command
{
    NSParameterAssert(command);
    [command excute];
    [self.queueArray addObject:command];
}

- (void)rollBack
{
    id <Command> command = [self.queueArray lastObject];
    [command rollback];
    [self.queueArray removeLastObject];
}

@end
