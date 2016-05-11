//
//  CardViewAdaperProtocol.h
//  AdapterModel
//
//  Created by 王磊 on 16/3/10.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol CardViewAdaperProtocol <NSObject>

- (NSString *)name;

- (UIColor *)lineColor;

- (NSString *)phone;

@end
