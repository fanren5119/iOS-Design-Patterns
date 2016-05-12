//
//  ColleagueA.m
//  Mediator
//
//  Created by 王磊 on 16/5/12.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ColleagueA.h"

@implementation ColleagueA

- (void)setCountNumber:(NSInteger)count
{
    self.count = count;
    [self.mediator changeWithColleague:self];
}

@end
