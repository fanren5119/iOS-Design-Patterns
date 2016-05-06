//
//  CustomView.m
//  CombinateObjectIterative
//
//  Created by 王磊 on 16/3/8.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "CustomView.h"
#import "LinkList.h"
#import "Node.h"

@interface CustomView ()

@property (nonatomic, strong) UIButton      *button;
@property (nonatomic, strong) UILabel       *label;
@property (nonatomic, strong) UITextField   *textField;
@property (nonatomic, strong) LinkList      *linkList;
@property (nonatomic, strong) Node          *currentNode;

@end

@implementation CustomView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.button     = [[UIButton alloc] initWithFrame:self.bounds];
        self.label      = [[UILabel alloc] initWithFrame:self.bounds];
        self.textField  = [[UITextField alloc] initWithFrame:self.bounds];
        
        [self addSubview:self.button];
        [self addSubview:self.label];
        [self addSubview:self.textField];
        
        self.linkList = [[LinkList alloc] init];
        [self.linkList addItem:self.button];
        [self.linkList addItem:self.label];
        [self.linkList addItem:self.textField];
        self.currentNode = self.linkList.headNode;
    }
    return self;
}

- (id)nextObject
{
    self.currentNode = self.currentNode.nextNode;
    return self.currentNode;
}

- (void)resetIterative
{
    self.currentNode = self.linkList.headNode;
}

@end
