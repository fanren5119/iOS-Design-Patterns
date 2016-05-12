//
//  Mediator.h
//  MediatorUI
//
//  Created by 王磊 on 16/5/12.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface Mediator : NSObject

+ (instancetype)shareInstance;

- (void)presentViewControllerWithIdentifer:(NSString *)vcIdentifer;

@end
