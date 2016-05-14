//
//  ViewController.m
//  VisitorPattern
//
//  Created by wanglei on 16/5/14.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "ElementProtocol.h"
#import "ConcreteElementB.h"
#import "ConcreteElementA.h"
#import "Visitor.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSArray *elementList = [self elementList];
    
    for (id<ElementProtocol> element in elementList) {
        Visitor *visitor = [[Visitor alloc] init];
        [element acceptVisitor:visitor];
    }
    
}

- (NSArray *)elementList
{
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:10];
    for (int i = 0; i < 10; i ++) {
        int a = random() % 100;
        if (a < 50) {
            ConcreteElementA *elementA = [[ConcreteElementA alloc] init];
            [array addObject:elementA];
        } else {
            ConcreteElementB *elementB = [[ConcreteElementB alloc] init];
            [array addObject:elementB];
        }
    }
    return array.copy;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
