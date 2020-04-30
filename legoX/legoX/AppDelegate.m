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
    
    [self setupWindow];
    
    [self setupGuideAndAdPage];

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

// 设置主控制器
-(void)setupWindow {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    LGTabBarController *tab_VC = [[LGTabBarController alloc] init];
    LGNavigationController *nav_VC = [[LGNavigationController alloc]initWithRootViewController:tab_VC];
    self.window.rootViewController = nav_VC;
    [self.window makeKeyAndVisible];
}

// 设置引导页/广告页
-(void)setupGuideAndAdPage {
    if ([LGAppInitSetting shouldShowGuidePage]) {
//        LGGuideViewController *guide_VC = [[LGGuideViewController alloc]init];
    } else if ([LGAppInitSetting shouldShowAdPage]) {
        
    } else {
        if ([LGUserManager isLogin]) {
            // 显示新手引导
        }
    }
}

@end
