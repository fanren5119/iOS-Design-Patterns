//
//  ViewController.m
//  TemplateMode
//
//  Created by 王磊 on 16/3/8.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"

#import "FootballGame.h"
#import "ChessGame.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Game *game = [[ChessGame alloc] init];
    [game initGame];
    [game playGame];
    [game pauseGame];
    [game saveGame];
    [game exitGame];
}


@end
