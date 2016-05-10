//
//  ViewController.m
//  BuliderMode
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "Car.h"
#import "CarDirector.h"
#import "EleticCarBuilder.h"
#import "BusBuilder.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    CarDirector *carDirector = [[CarDirector  alloc] init];
    
    EleticCarBuilder *builder1 = [[EleticCarBuilder alloc] init];
    Car *car1 = [carDirector createElectricCarsWithBuilder:builder1];
    NSLog(@"eleticCar: %@", car1);
    
    BusBuilder *builder2 = [[BusBuilder alloc] init];
    Car *car2 = [carDirector createBusWithBuilder:builder2];
    NSLog(@"bus: %@", car2);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
