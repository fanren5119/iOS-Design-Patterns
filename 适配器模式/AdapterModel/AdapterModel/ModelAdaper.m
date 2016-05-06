//
//  ModelAdaper.m
//  AdapterModel
//
//  Created by 王磊 on 16/3/10.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ModelAdaper.h"
#import "Model.h"

@implementation ModelAdaper

- (NSString *)name
{
    Model *model = self.data;
    return model.name;
}

- (UIColor *)lineColor
{
    Model *model = self.data;
    return model.lineColor;
}

- (NSString *)phone
{
    Model *model = self.data;
    return model.phone;
}


@end
