//
//  StudentClass.h
//  NSCopyDemo
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "BaseObjectCopy.h"

@interface StudentClass : BaseObjectCopy

@property (nonatomic, strong) NSString  *name;
@property (nonatomic, strong) NSArray   *students;

@end
