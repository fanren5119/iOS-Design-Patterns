//
//  ConcreteElementB.m
//  VisitorPattern
//
//  Created by wanglei on 16/5/14.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ConcreteElementB.h"

@interface ConcreteElementB ()


@end

@implementation ConcreteElementB

- (void)doSomethings
{
    NSLog(@"B do something");
}

- (void)acceptVisitor:(Visitor *)visitor
{
    [visitor visitConcreteVisitorB:self];
}

@end
