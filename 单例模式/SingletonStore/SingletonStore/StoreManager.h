//
//  StoreManager.h
//  SingletonStore
//
//  Created by 王磊 on 16/3/4.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StoreManager : NSObject

+ (instancetype)shareManager;

- (void)storeValue:(id)value withKey:(NSString *)key;
- (id)valueWithKey:(NSString *)key;

@end
