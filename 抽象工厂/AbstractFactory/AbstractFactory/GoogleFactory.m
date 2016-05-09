//
//  GoogleFactory.m
//  AbstractFactory
//
//  Created by 王磊 on 16/3/3.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "GoogleFactory.h"
#import "Android.h"
#import "AndroidWatch.h"

@implementation GoogleFactory

- (Phone *)createPhone
{
    return [[Android alloc] init];
}

- (Watch *)createWatch
{
    return [[AndroidWatch alloc] init];
}

@end
