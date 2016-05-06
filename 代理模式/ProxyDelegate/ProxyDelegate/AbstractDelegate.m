//
//  AbstractDelegate.m
//  ProxyDelegate
//
//  Created by 王磊 on 16/3/4.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "AbstractDelegate.h"
#import "AbstractExcute.h"

@implementation AbstractDelegate

- (nullable NSMethodSignature *)methodSignatureForSelector:(SEL)sel
{
    if ([self.delegate respondsToSelector:sel]) {
        NSMethodSignature *signature = [NSMethodSignature methodSignatureForSelector:sel];
        return signature;
    } else {
        AbstractExcute *excute = [AbstractExcute shareInstance];
        return [excute methodSignatureForSelector:NSSelectorFromString(@"nullExcute:")];
    }
}

- (void)forwardInvocation:(NSInvocation *)invocation
{
    SEL selctor = [invocation selector];
    if ([self.delegate respondsToSelector:selctor]) {
        [invocation setTarget:self.delegate];
        [invocation invoke];
    } else {
        
        
        AbstractExcute *excute = [AbstractExcute shareInstance];
        [invocation setTarget:excute];
        [invocation setSelector:NSSelectorFromString(@"nullExcute:")];
        
        NSString *info = @"no delegate";
        [invocation setArgument:&info atIndex:2];
        [invocation invoke];
    }
}


@end
