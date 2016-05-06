//
//  NewModelAdaper.m
//  AdapterModel
//
//  Created by 王磊 on 16/3/10.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "NewModelAdaper.h"
#import "NewModel.h"

@implementation NewModelAdaper

- (NSString *)name
{
    NewModel *model = self.data;
    return [NSString stringWithFormat:@"%@. %@", model.lastName, model.firstName];
}

- (UIColor *)lineColor
{
    NewModel *model = self.data;
    if ([model.lineColorHex isEqualToString:@"black"]) {
        return [UIColor blackColor];
    } else if ([model.lineColorHex isEqualToString:@"red"]) {
        return [UIColor redColor];
    }
    return [UIColor grayColor];
}

- (NSString *)phone
{
    NewModel *model = self.data;
    return model.phone;
}


@end
