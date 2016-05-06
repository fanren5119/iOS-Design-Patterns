//
//  Recive.h
//  CommandMode
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Recive : NSObject

@property (nonatomic, weak) UIView *clientView;

- (void)makeDarker:(CGFloat)parameter;

- (void)makeLighter:(CGFloat)parameter;

@end
