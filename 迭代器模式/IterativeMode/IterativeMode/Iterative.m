//
//  Iterative.m
//  IterativeMode
//
//  Created by 王磊 on 16/3/8.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "Iterative.h"

@interface Iterative ()

@property (nonatomic, strong) LinkList  *linkList;
@property (nonatomic, strong) Node      *headNode;
@property (nonatomic, strong) Node      *currentNode;

@end

@implementation Iterative

+ (instancetype)iterativeWithLinkList:(LinkList *)linkList
{
    Iterative *iterative = [[[self class] alloc] init];
    iterative.linkList = linkList;
    iterative.headNode = linkList.headNode;
    iterative.currentNode = linkList.headNode;
    return iterative;
}

- (id)nextObject
{
    self.currentNode = self.currentNode.nextNode;
    return self.currentNode;
}

@end
