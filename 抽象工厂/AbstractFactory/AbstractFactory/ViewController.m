//
//  ViewController.m
//  AbstractFactory
//
//  Created by 王磊 on 16/3/3.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"

#import "FactoryManager.h"
#import "Factory.h"
#import "Phone.h"
#import "Watch.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Factory *factory = [FactoryManager createFactoryWithType:GooleFactoryType];
    
    Phone *phone = [factory createPhone];
    [phone phoneCall];
    
    Watch *watch = [factory createWatch];
    [watch displayTime];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
