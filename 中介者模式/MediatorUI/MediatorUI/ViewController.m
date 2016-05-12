//
//  ViewController.m
//  MediatorUI
//
//  Created by 王磊 on 16/5/12.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "Mediator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)respondsToSecond:(id)sender {
    [[Mediator shareInstance] presentViewControllerWithIdentifer:@"SecondViewController"];
}
- (IBAction)respondsToThird:(id)sender {
    [[Mediator shareInstance] presentViewControllerWithIdentifer:@"ThirdViewController"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
