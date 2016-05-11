//
//  ModelAdapter.m
//  ClassAdapter
//
//  Created by 王磊 on 16/5/10.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ModelAdapter.h"

@implementation ModelAdapter

- (NSString *)name
{
    return self.userName;
}

- (UIColor *)lineColor
{
    return self.viewLineColor;
}

- (NSString *)phone
{
    return self.userPhone;
}

@end
