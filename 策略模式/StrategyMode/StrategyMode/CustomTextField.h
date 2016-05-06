//
//  CustomTextField.h
//  StrategyMode
//
//  Created by 王磊 on 16/3/10.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AbstractStrategy.h"

@interface CustomTextField : UITextField

@property (nonatomic, strong) AbstractStrategy *strategy;

- (BOOL)validateText;

@end
