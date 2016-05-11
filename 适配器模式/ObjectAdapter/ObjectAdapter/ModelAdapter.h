//
//  ModelAdapter.h
//  ObjectAdapter
//
//  Created by 王磊 on 16/5/10.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Model.h"
#import "CardViewAdaperProtocol.h"

@interface ModelAdapter : NSObject <CardViewAdaperProtocol>

@property (nonatomic, strong) Model *model;

- (id)initWithModel:(Model *)model;

@end
