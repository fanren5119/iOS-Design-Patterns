//
//  AbstractWheels.h
//  BuliderMode
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AbstractWheels <NSObject>

//轮子的个数
- (void)wheelsCount:(NSInteger)count;

//轮子信息
- (NSString *)information;

@end
