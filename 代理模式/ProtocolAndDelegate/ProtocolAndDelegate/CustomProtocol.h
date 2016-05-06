//
//  CustomProtocol.h
//  ProtocolAndDelegate
//
//  Created by 王磊 on 16/3/4.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CustomProtocol <NSObject>

@required

- (NSInteger)bugCount;

- (NSString *)bugName;

@end
