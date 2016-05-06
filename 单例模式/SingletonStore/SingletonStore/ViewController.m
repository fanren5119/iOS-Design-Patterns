//
//  ViewController.m
//  SingletonStore
//
//  Created by 王磊 on 16/3/4.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "People.h"
#import "StoreManager.h"
#import "NSObject+Store.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    People *p1 = [[People alloc] initWithName:@"wang" age:12];
    People *p2 = [[People alloc] initWithName:@"lei" age:14];
    People *p3 = [[People alloc] initWithName:@"wl" age:15];
    
    NSArray *array = @[p1, p2, p3];
    [array storeValueWithKey:@"storeManager"];
    
    NSArray *temArray = [NSArray valueWithKey:@"storeManager"];
    NSLog(@"%@", temArray);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
