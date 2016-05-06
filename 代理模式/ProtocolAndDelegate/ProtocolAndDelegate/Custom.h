//
//  Custom.h
//  ProtocolAndDelegate
//
//  Created by 王磊 on 16/3/4.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Custom;

@protocol CustomDelegate <NSObject>

- (void)custom:(Custom *)custom buyItem:(NSInteger)count;

@end

@interface Custom : NSObject

@property (nonatomic, weak) id <CustomDelegate> delegate;

- (void)buyItem:(NSInteger)count;

@end
