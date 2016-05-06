//
//  ViewController.m
//  CommandMode
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "Invoker.h"
#import "DarkerCommand.h"
#import "LighterCommand.h"
#import "Recive.h"

@interface ViewController ()

@property (nonatomic, strong) Recive *receiver;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.receiver = [[Recive alloc] init];
    self.receiver.clientView = self.view;
}

- (IBAction)respondsToAdd:(id)sender
{
    LighterCommand *command = [[LighterCommand alloc] initWithReceiver:self.receiver parameter:0.1];
    [[Invoker shareInstance] addCommend:command];
}

- (IBAction)respondsToDel:(id)sender
{
    DarkerCommand *command = [[DarkerCommand alloc] initWithReceiver:self.receiver parameter:0.1];
    [[Invoker shareInstance] addCommend:command];
}

- (IBAction)respondsToRollBack:(id)sender
{
    [[Invoker shareInstance] rollBack];
}

@end
