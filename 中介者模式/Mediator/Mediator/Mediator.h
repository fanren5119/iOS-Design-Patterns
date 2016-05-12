//
//  Mediator.h
//  Mediator
//
//  Created by 王磊 on 16/5/12.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractColleague.h"
#import "ColleagueA.h"
#import "ColleagueB.h"
#import "MediatorProtocol.h"

@interface Mediator : NSObject <MediatorProtocol>

@property (nonatomic, strong) ColleagueA *colleagueA;
@property (nonatomic, strong) ColleagueB *colleagueB;

@end
