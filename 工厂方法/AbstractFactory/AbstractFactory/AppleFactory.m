//
//  AppleFactory.m
//  AbstractFactory
//
//  Created by 王磊 on 16/3/3.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "AppleFactory.h"
#import "IPhone.h"
#import "IWatch.h"

@implementation AppleFactory

- (Phone *)createPhone
{
    return [[IPhone alloc] init];
}

- (Watch *)createWatch
{
    return [[IWatch alloc] init];
}

@end
