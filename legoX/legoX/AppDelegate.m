//
//  AppDelegate.m
//  legoX
//
//  Created by 谢吴军 on 2020/4/14.
//  Copyright © 2020 dreamit. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [self initSetting];
    
    [self initPFSDK];
    
    // 1>.设置主控制器
    /*
     1.主流框架 - 大家都这样写
     2.非主流框架/！！！不可使用！！！ - UIWindow -> UINavigationController -> UITabBarController -> ChildViewControllers
     */
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    LGTabBarController *tab_VC = [[LGTabBarController alloc] init];
    self.window.rootViewController = tab_VC;
    [self.window makeKeyAndVisible];
    
    // 2>.设置引导页/广告页
    /**
     1.并不是每次都需要显示引导页/怎么判断？？？
     Q.因为每次判断都是固定的，所以我们可以把这个判断封装起来。新建一个LGAppInitSetting.swift文件
     2.怎么让引导页显示在最上面？？？
     Q.可以让他显示在临时UIWindow上面/！！！要求对UIWindow有一个比较深刻的理解！！！
     */
    if ([LGAppInitSetting shouldShowGuidePage]) {
        LGGuideViewController *guide_VC = [[LGGuideViewController alloc]init];
        // FIXME - 这里必须要求对UIWindow有一个比较深刻的理解
    }
    
    return YES;
}

#pragma mark - 基本框架
// 基础设置
-(void)initSetting {
    [IQKeyboardManager sharedManager].enable = NO;
    [IQKeyboardManager sharedManager].enableAutoToolbar = NO;
}

// 初始化第三方
-(void)initPFSDK {
    
}

@end
