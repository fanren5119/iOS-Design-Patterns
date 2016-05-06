//
//  BaseObjectCopy.h
//  NSCopyDemo
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseObjectCopy : NSObject <NSCopying>

- (id)copyWithZone:(NSZone *)zone;

- (void)copyWithObject:(id)object;

@end
