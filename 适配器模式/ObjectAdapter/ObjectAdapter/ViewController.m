//
//  ViewController.m
//  ObjectAdapter
//
//  Created by 王磊 on 16/5/10.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "CardView.h"

#import "Model.h"
#import "ModelAdapter.h"

@interface ViewController ()

@property (nonatomic, strong) CardView *cardView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.cardView = [[CardView alloc] initWithFrame:CGRectMake(0, 0, 250, 150)];
    self.cardView.center = self.view.center;
    [self.view addSubview:self.cardView];
    
    [self assignmentByModelAdaper];
}

- (void)assignmentByModelAdaper
{
    Model *model = [[Model alloc] init];
    model.name = @"wanglei";
    model.lineColor = [UIColor blackColor];
    model.phone = @"155 - 2939 - 9250";
    
    ModelAdapter *adaper = [[ModelAdapter alloc] initWithModel:model];
    [self.cardView resetViewWithData:adaper];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
