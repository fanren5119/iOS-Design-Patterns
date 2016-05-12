//
//  AbstractColleague.h
//  Mediator
//
//  Created by 王磊 on 16/5/12.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MediatorProtocol.h"

@interface AbstractColleague : NSObject

@property (nonatomic, weak) id<MediatorProtocol> mediator;

@end
