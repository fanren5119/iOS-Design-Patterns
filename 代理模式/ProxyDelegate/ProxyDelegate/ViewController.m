//
//  ViewController.m
//  ProxyDelegate
//
//  Created by 王磊 on 16/3/4.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"

#import "CustomDelegate.h"
#import "CustomProtcol.h"

@interface ViewController () <CustomProtcol>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CustomDelegate *custom = [CustomDelegate alloc];
    custom.delegate = self;
    [custom buyItems];
}

//- (void)buyItems
//{
//    NSLog(@"buyItems");
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
