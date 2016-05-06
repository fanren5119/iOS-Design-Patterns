//
//  Student.h
//  PrototypeMode
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrototypeProtocol.h"

@interface Student : NSObject <PrototypeProtocol>

@property (nonatomic, strong) NSString  *name;
@property (nonatomic, strong) NSNumber  *age;
@property (nonatomic, strong) NSString  *address;
@property (nonatomic, strong) NSNumber  *totalFraction;

@end
