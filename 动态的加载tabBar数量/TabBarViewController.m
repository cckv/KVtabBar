//
//  TabBarViewController.m
//  动态的加载tabBar数量
//
//  Created by OpenCom on 16/4/6.
//  Copyright © 2016年 OpenCom. All rights reserved.
//

#import "TabBarViewController.h"
#import "ViewController.h"
#import "oneViewController.h"
#import "twoViewController.h"
#import "threeViewController.h"
#import "fourViewController.h"


@interface TabBarViewController ()
@end

@implementation TabBarViewController

- (void)setTitleArr:(NSArray *)titleArr
{
    _titleArr = titleArr;
    for (int i = 0; i < self.titleArr.count; i++) {
        UIViewController *vc = [[ViewController alloc]init];
        vc.title = [NSString stringWithFormat:@"第%d个控制器",i];
        UINavigationController *na = [[UINavigationController alloc]initWithRootViewController:vc];
        [self addChildViewController:na];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITabBar *tabBar = [UITabBar appearance];
    [tabBar setBarTintColor:[UIColor orangeColor]];
    
}

- (void)setupChildVc
{
    NSLog(@"%ld",self.titleArr.count);
    for (int i = 0; i < self.titleArr.count; i++) {
        
        UIViewController *vc = [[ViewController alloc]init];
        vc.title = [NSString stringWithFormat:@"第%d个控制器",i];
        [self addChildViewController:vc];
    }
    
//    UIViewController *vc1 = [[ViewController alloc]init];
//    UIViewController *vc2 = [[oneViewController alloc]init];
//    UIViewController *vc3 = [[twoViewController alloc]init];
//    UIViewController *vc4 = [[threeViewController alloc]init];
//    UIViewController *vc5 = [[fourViewController alloc]init];
//    
//    vc1.title = @"第一个";
//    vc2.title = @"第二个";
//    vc3.title = @"第三个";
//    vc4.title = @"第四个";
//    vc5.title = @"第五个";
//    
//    [self addChildViewController:vc1];
//    [self addChildViewController:vc2];
//    [self addChildViewController:vc3];
//    [self addChildViewController:vc4];
//    [self addChildViewController:vc5];
}

@end
