//
//  LinkList.h
//  IterativeMode
//
//  Created by 王磊 on 16/3/8.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface LinkList : NSObject

@property (nonatomic, strong, readonly) Node *headNode;
@property (nonatomic, assign, readonly) NSInteger numberOfItem;

- (void)addItem:(id)item;

@end
