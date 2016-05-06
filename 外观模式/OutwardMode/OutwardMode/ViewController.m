//
//  ViewController.m
//  OutwardMode
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"

#import "CircleShape.h"
#import "Reatangle.h"

#import "ShapeMaker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    //画一个圆
//    CircleShape *circle = [[CircleShape alloc] init];
//    circle.radius = 15;
//    [circle draw];
//    
//    //画一个矩形
//    Reatangle *reatangle = [[Reatangle alloc] init];
//    reatangle.width = 100;
//    reatangle.height = 200;
//    [reatangle draw];
    
    //画一个圆
    [ShapeMaker drawCircle:15];
    
    //画一个矩形
    [ShapeMaker drawReatangle:100 height:200];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
