//
//  ViewController.m
//  SaveUIViewState
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"

#import "DemoView.h"
#import "NSObject+Memento.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    DemoView *demoView = [[DemoView alloc] init];
//    demoView.frame = CGRectMake(100, 100, 100, 100);
//    demoView.backgroundColor = [UIColor redColor];
////
//    [demoView saveStateWithKey:@"demo"];
    [demoView recoveStateWithKey:@"demo"];
    [self.view addSubview:demoView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
