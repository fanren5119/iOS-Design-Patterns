//
//  MemorandumCenter.h
//  MemorandumMode
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MementoProtocol.h"

@interface MemorandumCenter : NSObject

+ (void)saveMemorandum:(id <MementoProtocol>)object withKey:(NSString *)key;

+ (id)memorandumWithKey:(NSString *)key;

@end
