//
//  ViewController.m
//  FlyweightMode
//
//  Created by 王磊 on 16/3/8.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"

#import "CoffeeShop.h"

@interface ViewController ()

@property (nonatomic, strong) CoffeeShop *shop;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.shop = [[CoffeeShop alloc] init];
    [self.shop takeOrder:@"A" table:0];
    [self.shop takeOrder:@"B" table:1];
    [self.shop takeOrder:@"A" table:2];
    [self.shop takeOrder:@"B" table:3];
    [self.shop takeOrder:@"A" table:4];
    
    [self.shop service];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
