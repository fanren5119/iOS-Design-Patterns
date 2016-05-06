//
//  Engine.h
//  BuliderMode
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BuilderProtocol.h"
#import "AbstractEngine.h"

@interface Engine : NSObject <BuilderProtocol, AbstractEngine>

@end
