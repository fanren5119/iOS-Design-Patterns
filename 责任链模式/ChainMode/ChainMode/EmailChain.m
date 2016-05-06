//
//  EmailChain.m
//  ChainMode
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "EmailChain.h"
#import "RegExCategories.h"

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
    NSString *string = request;
    BOOL isMatch = [string isMatch:RX(@"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}")];
    if (isMatch) {
        NSLog(@"%@是邮箱", string);
    } else {
        [self.nextSuccessor handleRequest:request];
    }
}

@end
