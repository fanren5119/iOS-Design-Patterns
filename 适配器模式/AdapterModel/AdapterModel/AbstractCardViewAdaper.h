//
//  AbstractCardViewAdaper.h
//  AdapterModel
//
//  Created by 王磊 on 16/3/10.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CardViewAdaperProtocol.h"

@interface AbstractCardViewAdaper : NSObject <CardViewAdaperProtocol>

@property (nonatomic, weak) id data;

- (instancetype)initWithModelData:(id)data;

@end
