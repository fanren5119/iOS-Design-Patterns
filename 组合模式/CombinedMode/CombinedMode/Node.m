//
//  Node.m
//  CombinedMode
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "Node.h"

@interface Node ()

@property (nonatomic, strong) NSMutableArray *childNodes;

@end

@implementation Node

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.childNodes = [NSMutableArray array];
    }
    return self;
}

+ (instancetype)nodeWithNodeName:(NSString *)nodeName
{
    Node *node = [[[self class] alloc] init];
    node.nodeName = nodeName;
    return node;
}

- (void)addNode:(Node *)node
{
    [self.childNodes addObject:node];
}

- (void)removeNode:(Node *)node
{
    [self.childNodes removeObject:node];
}

- (Node *)nodeAtIndex:(NSInteger)index
{
    if (index >= self.childNodes.count) {
        return nil;
    }
    return self.childNodes[index];
}

- (void)operation
{
    NSLog(@"nodeName -->%@", self.nodeName);
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"[Node] : %@", self.nodeName];
}

@end
