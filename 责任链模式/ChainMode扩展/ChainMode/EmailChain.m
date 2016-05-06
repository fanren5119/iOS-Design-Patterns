//
//  EmailChain.m
//  ChainMode
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "EmailChain.h"
#import "RegExCategories.h"
#import "ChainEvent.h"

@interface EmailChain ()

@property (nonatomic, strong) id <ChainProtocol> nextSuccessor;

@end

@implementation EmailChain

- (void)setSuccessor:(id<ChainProtocol>)successor
{
    self.nextSuccessor = successor;
}

- (id <ChainProtocol>)successor
{
    return self.nextSuccessor;
}

- (void)handleRequest:(id)request
{
    ChainEvent *chainEvent = request;
    BOOL isMatch = [chainEvent.string isMatch:RX(@"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}")];
    chainEvent.information[@"email"] = @(isMatch);
    [self.nextSuccessor handleRequest:request];
}

@end
