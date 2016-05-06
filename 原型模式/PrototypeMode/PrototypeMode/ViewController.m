//
//  ViewController.m
//  PrototypeMode
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"

#import "Student.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Student *stu1 = [[Student alloc] init];
    stu1.name = @"小明";
    stu1.age = @(15);
    stu1.address = @"aaa";
    stu1.totalFraction = @(100);
    
    Student *st2 = [stu1 clone];
    st2.name = @"小花";
    NSLog(@"%@", stu1);
    NSLog(@"%@", st2);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
