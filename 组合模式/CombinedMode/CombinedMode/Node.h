//
//  Node.h
//  CombinedMode
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property (nonatomic, strong)           NSString        *nodeName;
@property (nonatomic, strong, readonly) NSMutableArray  *childNodes;

+ (instancetype)nodeWithNodeName:(NSString *)nodeName;

- (void)addNode:(Node *)node;

- (void)removeNode:(Node *)node;

- (Node *)nodeAtIndex:(NSInteger)index;

- (void)operation;

@end
