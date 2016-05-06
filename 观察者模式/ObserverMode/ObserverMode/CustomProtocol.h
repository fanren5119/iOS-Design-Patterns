//
//  CustomProtocol.h
//  ObserverMode
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CustomProtocol <NSObject>

- (void)receiveMessage:(id)message subscriptionNum:(NSString *)number;

@end
