//
//  LinkList.h
//  CombinateObjectIterative
//
//  Created by 王磊 on 16/3/8.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Node;

@interface LinkList : NSObject

@property (nonatomic, strong, readonly) Node *headNode;

- (void)addItem:(id)item;

@end
