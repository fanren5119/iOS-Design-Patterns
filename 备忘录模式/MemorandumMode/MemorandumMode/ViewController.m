//
//  ViewController.m
//  MemorandumMode
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "MemorandumCenter.h"
#import "Apple.h"
#import "NSObject+Memento.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Apple *apple = [[Apple alloc] init];
//    apple.name = @"wang";
//    apple.age = 26;
//    [apple saveMementoWithKey:@"Apple"];
    
    [apple recoverStateWithKey:@"Apple"];
    
    
    NSLog(@"name :%@ age: %ld", apple.name, (long)apple.age);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
