//
//  MediatorProtocol.h
//  Mediator
//
//  Created by 王磊 on 16/5/12.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AbstractColleague;

@protocol MediatorProtocol <NSObject>

- (void)changeWithColleague:(AbstractColleague *)colleague;

@end
