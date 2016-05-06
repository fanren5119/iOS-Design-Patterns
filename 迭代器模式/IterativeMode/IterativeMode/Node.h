//
//  Node.h
//  IterativeMode
//
//  Created by 王磊 on 16/3/8.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property (nonatomic, strong) Node *nextNode;
@property (nonatomic, strong) id item;

+ (instancetype)nodeWithItem:(id)item;

@end
