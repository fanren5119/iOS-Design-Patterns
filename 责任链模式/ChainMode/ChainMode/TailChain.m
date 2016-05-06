//
//  TailChain.m
//  ChainMode
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "TailChain.h"
#import "RegExCategories.h"

@interface TailChain ()

@property (nonatomic, strong) id <ChainProtocol> nextSuccessor;

@end

@implementation TailChain

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
    NSLog(@"既不是电话号码，不是邮箱，也不是用户名");
}


@end
