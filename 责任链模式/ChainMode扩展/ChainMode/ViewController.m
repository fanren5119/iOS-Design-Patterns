//
//  ViewController.m
//  ChainMode
//
//  Created by 王磊 on 16/3/9.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "HeadNode.h"
#import "PhoneChain.h"
#import "EmailChain.h"
#import "UserNameChain.h"
#import "TailChain.h"
#import "ChainProtocol.h"
#import "ChainEvent.h"

@interface ViewController ()

@property (nonatomic, strong) HeadNode      *headNode;
@property (nonatomic, strong) PhoneChain    *phone;
@property (nonatomic, strong) EmailChain    *email;
@property (nonatomic, strong) UserNameChain *userName;
@property (nonatomic, strong) TailChain     *tail;
@property (nonatomic, strong) ChainEvent    *chainEvent;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*
        正则表达式[string isMatch: RX(rxString)]
        1.判断是不是电话号码（手机号以13，15，18开头，八个\d数字字符）
        RX(@"^((13[0-9])|(15[^4,\\D])|(18[0,0-9]))\\d{8}$")
        
        2.判断是不是邮箱
        RX(@"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}")
     
        3.判断是不是用户名（用户名长度为6-20位之间，大小写字母或者数字均可）
        RX(@"^[A-Za-z0-9]{6,20}+$")
     */
    
    //创建责任链对象
    self.headNode   = [[HeadNode alloc] init];
    self.phone      = [[PhoneChain alloc] init];
    self.email      = [[EmailChain alloc] init];
    self.userName   = [[UserNameChain alloc] init];
    self.tail       = [[TailChain alloc] init];
    
    //连接责任链
    self.headNode.successor     = self.phone;
    self.phone.successor        = self.email;
    self.email.successor        = self.userName;
    self.userName.successor     = self.tail;
    
    self.chainEvent = [[ChainEvent alloc] init];
    self.chainEvent.string = @"1552442";
    
    [self.headNode handleRequest:self.chainEvent];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
