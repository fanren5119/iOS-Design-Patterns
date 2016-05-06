//
//  ViewController.m
//  CombinedMode
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "Node.h"

@interface ViewController ()

@property (nonatomic, strong) Node *rootNode;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建根节点A
    self.rootNode = [Node nodeWithNodeName:@"A"];
    
    //创建第一级节点 A -> B,C,D
    [self.rootNode addNode:[Node nodeWithNodeName:@"B"]];
    Node *c = [Node nodeWithNodeName:@"C"];
    [self.rootNode addNode:c];
    [self.rootNode addNode:[Node nodeWithNodeName:@"D"]];
    
    //创建第二级节点 C -> E, F
    [c addNode:[Node nodeWithNodeName:@"E"]];
    [c addNode:[Node nodeWithNodeName:@"F"]];
    
    NSLog(@"%@", self.rootNode.childNodes);
    NSLog(@"%@", c.childNodes);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
