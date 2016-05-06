//
//  SubscriptionCenter.m
//  ObserverMode
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "SubscriptionCenter.h"

static SubscriptionCenter *center = nil;

@interface SubscriptionCenter ()

@property (nonatomic, strong) NSMutableDictionary *subscriptionDic;

@end

@implementation SubscriptionCenter

+ (instancetype)defaultCenter
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        center = [[SubscriptionCenter alloc] init];
        center.subscriptionDic = [NSMutableDictionary dictionary];
    });
    return center;
}

- (void)addSubscriptionNum:(NSString *)number
{
    NSParameterAssert(number);
    NSHashTable *hashTable = [self customWithSubscriptionNum:number];
    if (hashTable == nil) {
        hashTable = [NSHashTable weakObjectsHashTable];
        self.subscriptionDic[number] = hashTable;
    }
}

- (void)removeSubscriptionNum:(NSString *)number
{
    NSParameterAssert(number);
    [self.subscriptionDic removeObjectForKey:number];
}

- (void)addCustom:(id <CustomProtocol>)custom suscriptionNum:(NSString *)number
{
    NSParameterAssert(custom);
    NSParameterAssert(number);
    NSHashTable *hashTable = [self customWithSubscriptionNum:number];
    [hashTable addObject:custom];
}

- (void)removeCustom:(id <CustomProtocol>)custom subscriptionNum:(NSString *)number
{
    NSParameterAssert(number);
    NSHashTable *hashTable = [self customWithSubscriptionNum:number];
    [hashTable removeObject:number];
}

- (void)sendMessage:(id)message toSubscriptionNum:(NSString *)number
{
    NSParameterAssert(number);
    NSHashTable *hashTable = [self customWithSubscriptionNum:number];
    NSEnumerator *enumerator = [hashTable objectEnumerator];
    id <CustomProtocol> object = nil;
    while (object = [enumerator nextObject]) {
        if ([object respondsToSelector:@selector(receiveMessage:subscriptionNum:)]) {
            [object receiveMessage:message subscriptionNum:number];
        }
    }
}


#pragma -mark 

- (NSHashTable *)customWithSubscriptionNum:(NSString *)number
{
    return [self.subscriptionDic objectForKey:number];
}

@end
