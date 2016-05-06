//
//  Node.m
//  CombinateObjectIterative
//
//  Created by 王磊 on 16/3/8.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "Node.h"

@implementation Node

+ (instancetype)nodeWithItem:(id)item
{
    Node *node = [[[self class] alloc] init];
    node.item = item;
    return node;
}

@end
