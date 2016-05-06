//
//  Custom.m
//  ProtocolAndDelegate
//
//  Created by 王磊 on 16/3/4.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "Custom.h"

@implementation Custom

- (void)buyItem:(NSInteger)count
{
    if ([self.delegate respondsToSelector:@selector(custom:buyItem:)]) {
        [self.delegate custom:self buyItem:count];
    }
}

@end
