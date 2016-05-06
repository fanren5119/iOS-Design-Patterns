//
//  SubscriptionCenter.h
//  ObserverMode
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CustomProtocol.h"

@interface SubscriptionCenter : NSObject

+ (instancetype)defaultCenter;

//添加订阅号
- (void)addSubscriptionNum:(NSString *)number;

//移除订阅号
- (void)removeSubscriptionNum:(NSString *)number;

//在一个订阅号上添加用户
- (void)addCustom:(id <CustomProtocol>)custom suscriptionNum:(NSString *)number;

//移除订阅号上的一个用户
- (void)removeCustom:(id <CustomProtocol>)custom subscriptionNum:(NSString *)number;

//发送消息到某一个订阅号
- (void)sendMessage:(id)message toSubscriptionNum:(NSString *)number;

@end
