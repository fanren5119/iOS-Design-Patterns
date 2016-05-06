//
//  PhoneProtocol.h
//  SimpleFactory
//
//  Created by 王磊 on 16/3/3.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PhoneProtocol <NSObject>

@required

- (void)phoneCall;

- (void)sendMessage;

@end
