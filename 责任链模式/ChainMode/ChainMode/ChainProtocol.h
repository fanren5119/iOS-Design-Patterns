//
//  ChainProtocol.h
//  ChainMode
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ChainProtocol <NSObject>

@property (nonatomic, strong) id <ChainProtocol> successor;

- (void)handleRequest:(id)request;

@end
