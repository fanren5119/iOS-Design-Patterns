//
//  ThirdViewController.m
//  MediatorUI
//
//  Created by 王磊 on 16/5/12.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ThirdViewController.h"
#import "Mediator.h"

@implementation ThirdViewController

- (IBAction)respondsToBack:(id)sender {
    [[Mediator shareInstance] presentViewControllerWithIdentifer:nil];
}

@end
