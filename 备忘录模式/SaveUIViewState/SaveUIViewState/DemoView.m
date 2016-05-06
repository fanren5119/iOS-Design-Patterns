//
//  DemoView.m
//  SaveUIViewState
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "DemoView.h"

@implementation DemoView

- (id)currentState
{
    return @{@"frame": NSStringFromCGRect(self.frame),
             @"color": self.backgroundColor};
}

- (void)recoverFromStata:(id)state
{
    NSDictionary *dictionary = state;
    self.frame = CGRectFromString(dictionary[@"frame"]);
    self.backgroundColor = dictionary[@"color"];
}

@end
