//
//  PhoneChain.m
//  ChainMode
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "PhoneChain.h"
#import "RegExCategories.h"

@interface PhoneChain ()

@property (nonatomic, strong) id <ChainProtocol> nextSuccessor;

@end

@implementation PhoneChain

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
    BOOL isMatch = [string isMatch:RX(@"^((13[0-9])|(15[^4,\\D])|(18[0,0-9]))\\d{8}$")];
    if (isMatch) {
        NSLog(@"%@是电话号码", string);
    } else {
        [self.nextSuccessor handleRequest:request];
    }
}

@end
