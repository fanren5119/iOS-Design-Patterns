//
//  ViewController.m
//  ObserverMode
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "SubscriptionCenter.h"
#import "CustomProtocol.h"

static NSString *SCIENCE = @"science";

@interface ViewController () 

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

    
    [[SubscriptionCenter defaultCenter] sendMessage:@"V2.0" toSubscriptionNum:SCIENCE];
}


@end
