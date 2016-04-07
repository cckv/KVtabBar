//
//  ViewController.m
//  动态的加载tabBar数量
//
//  Created by OpenCom on 16/4/6.
//  Copyright © 2016年 OpenCom. All rights reserved.
//

#import "ViewController.h"

#define KVColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]
#define KVRandomColor KVColor(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))

@interface ViewController ()
@end

@implementation ViewController
+ (void)load
{
    UINavigationBar *navigationBar = [UINavigationBar appearance];
    [navigationBar setBarTintColor:[UIColor redColor]];
}
- (void)viewWillAppear:(BOOL)animated
{
    UINavigationBar *navigationBar = [UINavigationBar appearance];
    [navigationBar setBarTintColor:[UIColor redColor]];
}
- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = KVRandomColor;
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UINavigationBar *navigationBar = [UINavigationBar appearance];
    [navigationBar setBarTintColor:[UIColor whiteColor]];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
