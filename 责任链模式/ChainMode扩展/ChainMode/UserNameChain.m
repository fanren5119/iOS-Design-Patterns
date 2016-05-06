//
//  UserNameChain.m
//  ChainMode
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "UserNameChain.h"
#import "RegExCategories.h"
#import "ChainEvent.h"

@interface UserNameChain ()

@property (nonatomic, strong) id <ChainProtocol> nextSuccessor;

@end

@implementation UserNameChain

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
    BOOL isMatch = [chainEvent.string isMatch:RX(@"^[A-Za-z0-9]{6,20}+$")];
    chainEvent.information[@"userName"] = @(isMatch);
    [self.nextSuccessor handleRequest:request];
}

@end
