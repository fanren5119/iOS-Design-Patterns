//
//  IterativeProtocol.h
//  CombinateObjectIterative
//
//  Created by 王磊 on 16/3/8.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IterativeProtocol <NSObject>

- (id)nextObject;

- (void)resetIterative;

@end
