//
//  AbstractDools.h
//  BuliderMode
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol AbstractDools <NSObject>

//轮子的颜色
- (void)doolsColor:(UIColor *)color;

//轮子信息
- (NSString *)information;

@end
