//
//  ViewController.m
//  ClassAdapter
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
    ModelAdapter *model = [[ModelAdapter alloc] init];
    model.userName = @"wanglei";
    model.viewLineColor = [UIColor blackColor];
    model.userPhone = @"155 - 2939 - 9250";
    
    [self.cardView resetViewWithData:model];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
