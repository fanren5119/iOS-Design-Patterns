//
//  ViewController.m
//  BridgeModeTest
//
//  Created by 王磊 on 16/3/4.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"

#import "GBASystem.h"
#import "GBAImplement.h"

#import "PSPSystem.h"
#import "PSPImplement.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    AbstractSystem *GBA = [[GBASystem alloc] init];
    GBA.implement = [[GBAImplement alloc] init];
    
    [GBA loadSystem];
    [GBA command_up];
    
    
    PSPSystem *PSP = [[PSPSystem alloc] init];
    PSP.implement = [[PSPImplement alloc] init];
    [PSP loadSystem];
    [PSP command_X];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
