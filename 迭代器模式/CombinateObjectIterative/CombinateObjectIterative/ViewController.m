//
//  ViewController.m
//  CombinateObjectIterative
//
//  Created by 王磊 on 16/3/8.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"
#import "Node.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CustomView *customView = [[CustomView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:customView];
    
    Node *node = nil;
    [customView resetIterative];
    while (node = [customView nextObject]) {
        NSLog(@"==%@", node.item);
    }
    
    [customView resetIterative];
    while (node = [customView nextObject]) {
        NSLog(@"==%@", node.item);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
