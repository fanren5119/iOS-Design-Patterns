//
//  AbstractStrategy.h
//  StrategyMode
//
//  Created by 王磊 on 16/3/10.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AbstractStrategy : NSObject

@property (nonatomic, strong) NSString *errorMessage;

- (BOOL)validateWithTextField:(UITextField *)textField;

@end
