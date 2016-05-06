//
//  MementoProtocol.h
//  SaveUIViewState
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MementoProtocol <NSObject>

- (id)currentState;

- (void)recoverFromStata:(id)state;

@end
