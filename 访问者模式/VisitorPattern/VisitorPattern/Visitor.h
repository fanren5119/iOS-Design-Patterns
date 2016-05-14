//
//  Visitor.h
//  VisitorPattern
//
//  Created by wanglei on 16/5/14.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ConcreteElementA;
@class ConcreteElementB;

@interface Visitor : NSObject

- (void)visitConcreteVisitorA:(ConcreteElementA *)elementA;
- (void)visitConcreteVisitorB:(ConcreteElementB *)elementB;

@end
