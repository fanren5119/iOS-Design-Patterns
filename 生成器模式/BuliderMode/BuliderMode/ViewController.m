//
//  ViewController.m
//  BuliderMode
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"

#import "CarBuilder.h"
#import "Engine.h"
#import "YEngine.h"
#import "Wheels.h"
#import "Dools.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CarBuilder *builder = [[CarBuilder alloc] init];
    builder.engine      = [[YEngine alloc] init];
    builder.wheels      = [[Wheels alloc] init];
    builder.dools       = [[Dools alloc] init];
    
    [builder buildAllPart];
    NSLog(@"%@", builder.carInfo);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
