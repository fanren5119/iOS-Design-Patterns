//
//  HeadNode.m
//  ChainMode
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "HeadNode.h"
#import "RegExCategories.h"

@interface HeadNode ()

@property (nonatomic, strong) id <ChainProtocol> nextSuccessor;

@end

@implementation HeadNode

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
    [self.nextSuccessor handleRequest:request];
}

@end
