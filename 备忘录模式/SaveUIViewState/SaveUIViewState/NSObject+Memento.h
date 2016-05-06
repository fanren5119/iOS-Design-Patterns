//
//  NSObject+Memento.h
//  SaveUIViewState
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Memento)

- (void)saveStateWithKey:(NSString *)key;

- (void)recoveStateWithKey:(NSString *)key;

@end
