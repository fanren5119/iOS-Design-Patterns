//
//  MementoCenter.h
//  SaveUIViewState
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MementoProtocol.h"

@interface MementoCenter : NSObject

+ (void)saveMemento:(id <MementoProtocol>)value withKey:(NSString *)key;

+ (id)mementoWithKey:(NSString *)key;

@end
