//
//  AppDelegate.m
//  动态的加载tabBar数量
//
//  Created by OpenCom on 16/4/6.
//  Copyright © 2016年 OpenCom. All rights reserved.
//

#import "AppDelegate.h"
#import "TabBarViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate
/**
 * 动态的加载tabbar （注意系统自带的tabbar最多只能有5个item）
 * 方案一：从服务器获取一个数组这个数组中存储着tabbar的item模型（名字、图片名、子控制器类型）
 * 方案二：从服务器获取一个JSON数据，解析JSON数据，根据该数据来设置tabbar
 */

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // 这里抽取一个工具类，来实现这个逻辑操作。
    TabBarViewController *tabVc = [[TabBarViewController alloc]init];
    
    tabVc.titleArr = @[@"1",@"2",@"1",@"2",@"1",@"2"];

    self.window.rootViewController = tabVc;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
