//
//  ViewController.m
//  NSCopyDemo
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"

#import "Student.h"
#import "StudentClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Student *stu1 = [[Student alloc] init];
    stu1.name = @"小明";
    stu1.age = @(15);
    stu1.address = @"上海";
    
    Student *stu2 = stu1.copy;
    
    NSLog(@"%@", stu1);
    NSLog(@"%@", stu2);
    
    StudentClass *class1 = [[StudentClass alloc] init];
    class1.name = @"班级1";
    class1.students = @[stu1, stu2];
    
    StudentClass *class2 = class1.copy;
    
    NSLog(@"%@", class1.students);
    NSLog(@"%@", class2.students);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
