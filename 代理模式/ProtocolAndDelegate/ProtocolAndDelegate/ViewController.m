//
//  ViewController.m
//  ProtocolAndDelegate
//
//  Created by 王磊 on 16/3/4.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "Custom.h"
#import "CustomUser.h"

@interface ViewController () <CustomDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    //代理
    Custom *custom = [[Custom alloc] init];
    custom.delegate = self;
    [custom buyItem:10];
    
    //协议
    CustomUser *customUser = [[CustomUser alloc] init];
    NSLog(@"count=%ld", (long)[customUser bugCount]);
    NSLog(@"name=%@", [customUser bugName]);
}

- (void)custom:(Custom *)custom buyItem:(NSInteger)count
{
    NSLog(@"custom buy count %ld", (long)count);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
