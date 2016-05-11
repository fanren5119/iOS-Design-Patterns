//
//  CardView.h
//  AdapterModel
//
//  Created by 王磊 on 16/3/10.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CardViewAdaperProtocol.h"

@interface CardView : UIView

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) UIColor  *lineColor;
@property (nonatomic, strong) NSString *phone;

- (void)resetViewWithData:(id <CardViewAdaperProtocol>)data;

@end
