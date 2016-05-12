//
//  ViewController.m
//  Mediator
//
//  Created by 王磊 on 16/5/12.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"

#import "Mediator.h"
#import "ColleagueA.h"
#import "ColleagueB.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Mediator *mediator = [[Mediator alloc] init];
    
    ColleagueA *colleagueA = [[ColleagueA alloc] init];
    colleagueA.mediator = mediator;
    
    ColleagueB *colleagueB = [[ColleagueB alloc] init];
    colleagueB.mediator = mediator;
    
    mediator.colleagueA = colleagueA;
    mediator.colleagueB = colleagueB;
    
    [colleagueA setCountNumber:10];
    NSLog(@"====%d", colleagueB.count);
    
    [colleagueB setCountNumber:10000];
    NSLog(@"----%d", colleagueA.count);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
