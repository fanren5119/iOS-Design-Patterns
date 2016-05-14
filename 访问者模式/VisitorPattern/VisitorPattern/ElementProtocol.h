//
//  ElementProtocol.h
//  VisitorPattern
//
//  Created by wanglei on 16/5/14.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Visitor.h"

@protocol ElementProtocol <NSObject>

- (void)acceptVisitor:(Visitor *)visitor;
- (void)doSomethings;

@end
