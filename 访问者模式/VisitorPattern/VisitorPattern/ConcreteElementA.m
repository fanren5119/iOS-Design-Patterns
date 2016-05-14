//
//  ConcreteElementA.m
//  VisitorPattern
//
//  Created by wanglei on 16/5/14.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ConcreteElementA.h"

@interface ConcreteElementA ()


@end

@implementation ConcreteElementA

- (void)doSomethings
{
    NSLog(@"A do something");
}

- (void)acceptVisitor:(Visitor *)visitor
{
    [visitor visitConcreteVisitorA:self];
}

@end
