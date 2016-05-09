//
//  Factory.h
//  AbstractFactory
//
//  Created by 王磊 on 16/3/3.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Phone.h"
#import "Watch.h"

@interface Factory : NSObject

- (Phone *)createPhone;

- (Watch *)createWatch;

@end
