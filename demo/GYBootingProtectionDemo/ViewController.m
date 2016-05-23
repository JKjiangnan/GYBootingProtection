//
//  ViewController.m
//  GYBootingProtectionDemo
//
//  Created by richliu on 16/5/20.
//  Copyright © 2016年 richliu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong) UIButton *button;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _button = [[UIButton alloc] initWithFrame:CGRectMake(50, 50, 200, 30)];
    [self.button setTitle:@"Make a crash" forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.button addTarget:self action:@selector(pressedButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];
}

- (void)pressedButton {
    abort();
}

@end
