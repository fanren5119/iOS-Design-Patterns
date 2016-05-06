//
//  Iterative.h
//  IterativeMode
//
//  Created by 王磊 on 16/3/8.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IterativeProtocol.h"
#import "LinkList.h"

@interface Iterative : NSObject <IterativeProtocol>

+ (instancetype)iterativeWithLinkList:(LinkList *)linkList;

@end
