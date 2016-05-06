//
//  UserInfoManager.h
//  StrictSingleton
//
//  Created by 王磊 on 16/3/4.
//  Copyright © 2016年 wanglei. All rights reserved.
//


/*
 严格的单例： 子类不能使用单例
            单例只有一个对象
 */

#import <Foundation/Foundation.h>

@interface UserInfoManager : NSObject

+ (instancetype)shareManager;

@end
