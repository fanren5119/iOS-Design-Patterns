//
//  Mediator.m
//  Mediator
//
//  Created by 王磊 on 16/5/12.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "Mediator.h"

@implementation Mediator

- (void)changeWithColleague:(AbstractColleague *)colleague
{
    if (colleague == self.colleagueA) {
        
        self.colleagueB.count = 100 * self.colleagueA.count;
    } else if (colleague == self.colleagueB) {
        self.colleagueA.count = self.colleagueB.count / 100;
    }
}

@end
