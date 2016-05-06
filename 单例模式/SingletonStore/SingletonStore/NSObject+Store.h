//
//  NSObject+Store.h
//  SingletonStore
//
//  Created by 王磊 on 16/3/4.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Store)

- (void)storeValueWithKey:(NSString *)key;
+ (instancetype)valueWithKey:(NSString *)key;

@end
