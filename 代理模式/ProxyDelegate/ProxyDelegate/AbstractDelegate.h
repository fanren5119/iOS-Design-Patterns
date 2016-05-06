//
//  AbstractDelegate.h
//  ProxyDelegate
//
//  Created by 王磊 on 16/3/4.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AbstractDelegate : NSProxy

@property (nonatomic, weak) id delegate;

@end
