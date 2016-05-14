//
//  Visitor.m
//  VisitorPattern
//
//  Created by wanglei on 16/5/14.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "Visitor.h"
#import "ConcreteElementA.h"
#import "ConcreteElementB.h"

@implementation Visitor

- (void)visitConcreteVisitorA:(ConcreteElementA *)elementA
{
    [elementA doSomethings];
}

- (void)visitConcreteVisitorB:(ConcreteElementB *)elementB
{
    [elementB doSomethings];
}

@end
