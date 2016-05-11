//
//  CardView.m
//  AdapterModel
//
//  Created by 王磊 on 16/3/10.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "CardView.h"

@interface CardView ()

@property (nonatomic, strong) UILabel       *nameLabel;
@property (nonatomic, strong) UIImageView   *lineImageView;
@property (nonatomic, strong) UILabel       *phoneLabel;

@end

@implementation CardView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createUI];
    }
    return self;
}


#pragma -mark CreateUI

- (void)createUI
{
    self.layer.borderColor = [UIColor grayColor].CGColor;
    self.layer.borderWidth = 1;
    [self createNameLabel];
    [self createLineImageView];
    [self createPhoneLabel];
}

- (void)createNameLabel
{
    self.nameLabel = [[UILabel alloc] init];
    self.nameLabel.font = [UIFont systemFontOfSize:18.f];
    self.nameLabel.textColor = [UIColor grayColor];
    self.nameLabel.textAlignment = NSTextAlignmentLeft;
    [self addSubview:self.nameLabel];
}

- (void)createLineImageView
{
    self.lineImageView = [[UIImageView alloc] init];
    [self addSubview:self.lineImageView];
}

- (void)createPhoneLabel
{
    self.phoneLabel = [[UILabel alloc] init];
    self.phoneLabel.font = [UIFont systemFontOfSize:19.f];
    self.phoneLabel.textColor = [UIColor grayColor];
    self.phoneLabel.textAlignment = NSTextAlignmentRight;
    [self addSubview:self.phoneLabel];
}


#pragma -mark Layout

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.nameLabel.frame = CGRectMake(20, 20, self.frame.size.width - 40, 30);
    self.lineImageView.frame = CGRectMake(20, 50, self.frame.size.width - 40, 10);
    self.phoneLabel.frame = CGRectMake(20, self.frame.size.height - 30, self.frame.size.width - 40, 30);
}


#pragma -mark Public

- (void)setName:(NSString *)name
{
    self.nameLabel.text = name;
}

- (void)setLineColor:(UIColor *)lineColor
{
    self.lineImageView.backgroundColor = lineColor;
}

- (void)setPhone:(NSString *)phone
{
    self.phoneLabel.text = phone;
}

- (void)resetViewWithData:(id <CardViewAdaperProtocol>)data
{
    self.name = [data name];
    self.lineColor = [data lineColor];
    self.phone = [data phone];
}

@end
