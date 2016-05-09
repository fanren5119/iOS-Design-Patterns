//
//  ViewController.m
//  FactoryMethod
//
//  Created by 王磊 on 16/5/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"

#import "IPhoneFactory.h"
#import "AndroidFactory.h"
#import "Device.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Factory *factory = [[AndroidFactory alloc] init];
    Device *device = [factory createDevice];
    [device sendMessage];
}

@end
