//
//  LGTabBarController.m
//  legoX
//
//  Created by 谢吴军 on 2020/4/18.
//  Copyright © 2020 dreamit. All rights reserved.
//

#import "LGTabBarController.h"

@interface LGTabBarController ()

@end

@implementation LGTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LGlegoXViewController *legoX_VC = [[LGlegoXViewController alloc]init];
    legoX_VC.tabBarItem.title = @"legoX";
    legoX_VC.tabBarItem.image = [[UIImage imageNamed:@"legoX_main_home_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    legoX_VC.tabBarItem.selectedImage = [[UIImage imageNamed:@"legoX_main_home_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self addChildViewController:legoX_VC];
    
    LGShoppingMallViewController *shoppingMall_VC = [[LGShoppingMallViewController alloc]init];
    shoppingMall_VC.tabBarItem.title = @"商城";
    shoppingMall_VC.tabBarItem.image = [[UIImage imageNamed:@"legoX_main_shoppingmall_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    shoppingMall_VC.tabBarItem.selectedImage = [[UIImage imageNamed:@"legoX_main_shoppingmall_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self addChildViewController:shoppingMall_VC];
    
    LGNewMarketViewController *newMarket_VC = [[LGNewMarketViewController alloc]init];
    newMarket_VC.tabBarItem.title = @"牛市";
    newMarket_VC.tabBarItem.image = [[UIImage imageNamed:@"legoX_main_newmarket_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    newMarket_VC.tabBarItem.selectedImage = [[UIImage imageNamed:@"legoX_main_newmarket_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self addChildViewController:newMarket_VC];
    
    LGMineViewController *Mine_VC = [[LGMineViewController alloc]init];
    Mine_VC.tabBarItem.title = @"我的";
    Mine_VC.tabBarItem.image = [[UIImage imageNamed:@"legoX_main_mine_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    Mine_VC.tabBarItem.selectedImage = [[UIImage imageNamed:@"legoX_main_mine_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self addChildViewController:Mine_VC];
}

@end
