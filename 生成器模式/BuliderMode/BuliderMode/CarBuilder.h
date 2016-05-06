//
//  CarBuilder.h
//  BuliderMode
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BuilderProtocol.h"
#import "AbstractEngine.h"
#import "AbstractWheels.h"
#import "AbstractDools.h"

@interface CarBuilder : NSObject

@property (nonatomic, strong) id <BuilderProtocol, AbstractEngine> engine;
@property (nonatomic, strong) id <BuilderProtocol, AbstractWheels> wheels;
@property (nonatomic, strong) id <BuilderProtocol, AbstractDools>  dools;

@property (nonatomic, strong) NSDictionary *carInfo;

- (void)buildAllPart;

@end
