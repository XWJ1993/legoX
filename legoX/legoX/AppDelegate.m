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
    
    [self setupWindow];

    return YES;
}

#pragma mark - 基本框架
-(void)setupWindow {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    LGTabBarController *tab_VC = [[LGTabBarController alloc] init];
    LGNavigationController *nav_VC = [[LGNavigationController alloc]initWithRootViewController:tab_VC];
    self.window.rootViewController = nav_VC;
    [self.window makeKeyAndVisible];
}

@end
