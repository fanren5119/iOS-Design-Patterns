//
//  ViewController.m
//  AdapterModel
//
//  Created by 王磊 on 16/3/10.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"

#import "CardView.h"

#import "Model.h"
#import "ModelAdaper.h"

#import "NewModel.h"
#import "NewModelAdaper.h"

@interface ViewController ()

@property (nonatomic, strong) CardView *cardView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.cardView = [[CardView alloc] initWithFrame:CGRectMake(0, 0, 250, 150)];
    self.cardView.center = self.view.center;
    [self.view addSubview:self.cardView];
//    [self assignmentDirectly];
    
    [self assignmentByModelAdaper];
}

- (void)assignmentDirectly
{
    self.cardView.name = @"wanglei";
    self.cardView.lineColor = [UIColor blackColor];
    self.cardView.phone = @"155 - 2939 - 9250";
}

- (void)assignmentByModelAdaper
{
    Model *model = [[Model alloc] init];
    model.name = @"wanglei";
    model.lineColor = [UIColor blackColor];
    model.phone = @"155 - 2939 - 9250";
    
    ModelAdaper *adaper = [[ModelAdaper alloc] initWithModelData:model];
    [self.cardView resetViewWithData:adaper];
}


- (void)assignmentByNewModelAdaper
{
    NewModel *model = [[NewModel alloc] init];
    model.firstName = @"lei";
    model.lastName = @"wang";
    model.lineColorHex = @"red";
    model.phone = @"155 - 2939 - 9250";
    
    NewModelAdaper *adaper = [[NewModelAdaper alloc] initWithModelData:model];
    [self.cardView resetViewWithData:adaper];
}

@end
