//
//  LinkList.m
//  IterativeMode
//
//  Created by 王磊 on 16/3/8.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "LinkList.h"

@interface LinkList ()

@property (nonatomic, strong) Node *headNode;
@property (nonatomic, assign) NSInteger numberOfItem;

@end

@implementation LinkList

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.headNode = [[Node alloc] init];
    }
    return self;
}

- (void)addItem:(id)item
{
    if (self.headNode == nil) {
        
        self.headNode = [Node nodeWithItem:item];
        
    } else {
        [self addItem:item node:self.headNode];
    }
}

- (void)addItem:(id)item node:(Node *)node
{
    if (node.nextNode == nil) {
        node.nextNode = [Node nodeWithItem:item];
    } else {
        [self addItem:item node:node.nextNode];
    }
}

@end
