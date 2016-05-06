//
//  ViewController.m
//  DecorationMode
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"

#import "GamePad.h"
#import "CheatGamePad.h"
#import "CoinGamePad.h"

#import "GamePad+Cheat.h"
#import "GamePad+Coin.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    GamePad *gamePad = [[GamePad alloc] init];
//    [gamePad up];
    
//    CheatGamePad *cheatGame = [[CheatGamePad alloc] init];
//    [cheatGame cheat];
//    
//    CoinGamePad *coinGame = [[CoinGamePad alloc] init];
//    coinGame.coins = 5;
    
    GamePad *gamePad = [[GamePad alloc] init];
    [gamePad cheat];
    gamePad.coins = 5;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
