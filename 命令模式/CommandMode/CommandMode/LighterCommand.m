//
//  LighterCommand.m
//  CommandMode
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "LighterCommand.h"
#import "Recive.h"

@interface LighterCommand ()

@property (nonatomic, weak)     Recive      *receiver;
@property (nonatomic, assign)   CGFloat     parameter;

@end

@implementation LighterCommand

- (instancetype)initWithReceiver:(Recive *)receiver
                       parameter:(CGFloat)parameter
{
    self = [super init];
    if (self) {
        _receiver = receiver;
        _parameter = parameter;
    }
    return self;
}

- (void)excute
{
    [self.receiver makeLighter:self.parameter];
}

- (void)rollback
{
    [self.receiver makeDarker:self.parameter];
}


@end
