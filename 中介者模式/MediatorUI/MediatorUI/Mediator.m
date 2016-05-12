//
//  Mediator.m
//  MediatorUI
//
//  Created by 王磊 on 16/5/12.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "Mediator.h"

static Mediator *mediator = nil;

@interface Mediator ()

@property (nonatomic, strong) UIViewController *currentVC;

@end

@implementation Mediator

+ (instancetype)shareInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mediator = [[Mediator alloc] init];
    });
    return mediator;
}

- (void)presentViewControllerWithIdentifer:(NSString *)vcIdentifer
{
    if (vcIdentifer == nil || [vcIdentifer isEqualToString:@""]) {
        [self.currentVC.navigationController popViewControllerAnimated:YES];
        return;
    }
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    UINavigationController *homeVC = (UINavigationController *)[[UIApplication sharedApplication] keyWindow].rootViewController;
    UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier:vcIdentifer];
    self.currentVC = vc;
    [homeVC pushViewController:vc animated:YES];
}

@end
