//
//  ViewController.m
//  SimpleFactory
//
//  Created by 王磊 on 16/3/3.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "PhoneFactory.h"
#import "BaseDevice.h"
#import "PhoneProtocol.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    BaseDevice *iphoneDevice = [PhoneFactory createDeviceWithPhoneType:Android];
    
    [iphoneDevice phoneCall];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
