//
//  ViewController.m
//  IterativeMode
//
//  Created by 王磊 on 16/3/8.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"

#import "Node.h"
#import "LinkList.h"
#import "Iterative.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self systemIterative];
    [self customIterative];
}

- (void)systemIterative
{
    //生成集合对象
    NSArray *array = @[@"A", @"B", @"C", @"D"];
    
    //生成迭代器
    NSEnumerator *enumerator = [array objectEnumerator];
    
    //遍历迭代器
    NSString *object = nil;
    while (object = [enumerator nextObject]) {
        NSLog(@"%@", object);
    }
}

- (void)customIterative
{
    //生成集合对象
    LinkList *linkList = [[LinkList alloc] init];
    [linkList addItem:@"A"];
    [linkList addItem:@"B"];
    [linkList addItem:@"C"];
    [linkList addItem:@"D"];
    
    //生成迭代器
    Iterative *iterative = [Iterative iterativeWithLinkList:linkList];
    
    //遍历迭代器
    Node *object = nil;
    while (object = [iterative nextObject]) {
        NSLog(@"==%@", object.item);
    }
}

@end
