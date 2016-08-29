//
//  AppDelegate.m
//  生活圈
//
//  Created by 1 10 1 on 16/8/28.
//  Copyright © 2016年 1 10 1. All rights reserved.
//

#import "AppDelegate.h"
#import "CJMMainViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    sleep(0.5);
    
    [self setupAppearance];
    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    _window.backgroundColor = [UIColor whiteColor];
    
    Class cls = NSClassFromString(@"CJMNewsListViewController");
    _window.rootViewController = [[cls alloc] init];
    [_window makeKeyAndVisible];
    return YES;
}
- (void)setupAppearance {

    //设置 tabBar 的渲染颜色
    [UITabBar appearance].tintColor = [UIColor cz_colorWithHex:0xDF0000];
}

@end
