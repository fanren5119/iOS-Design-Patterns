//
//  Student.h
//  NSCopyDemo
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "BaseObjectCopy.h"

@interface Student : BaseObjectCopy

@property (nonatomic, strong) NSString  *name;
@property (nonatomic, strong) NSNumber  *age;
@property (nonatomic, strong) NSString  *address;

@end
