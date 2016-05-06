//
//  DarkerCommand.m
//  CommandMode
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "DarkerCommand.h"
#import "Recive.h"

@interface DarkerCommand ()

@property (nonatomic, weak)     Recive      *receiver;
@property (nonatomic, assign)   CGFloat     parameter;

@end

@implementation DarkerCommand

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
    [self.receiver makeDarker:self.parameter];
}

- (void)rollback
{
    [self.receiver makeLighter:self.parameter];
}

@end
