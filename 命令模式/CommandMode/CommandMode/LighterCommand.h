//
//  LighterCommand.h
//  CommandMode
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "Command.h"

@class Recive;

@interface LighterCommand : NSObject <Command>

- (instancetype)initWithReceiver:(Recive *)receiver
                       parameter:(CGFloat)parameter;

@end
