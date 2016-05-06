//
//  Apple.h
//  MemorandumMode
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MementoProtocol.h"

@interface Apple : NSObject <MementoProtocol>

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger age;

@end
