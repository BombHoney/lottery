//
//  LZTTabBarController.m
//  Lottery
//
//  Created by MacLau on 2017/1/2.
//  Copyright © 2017年 MacLau. All rights reserved.
//

#import "LZTTabBarController.h"
#import "LZTNavigationController.h"
#import "LZTHallTableViewController.h"
#import "LZTArenaViewController.h"
#import "LZTDiscoveryTableViewController.h"
#import "LZTHistoryTableViewController.h"
#import "LZTLotteryViewController.h"
#import "LZTArenaNavigationController.h"

@interface LZTTabBarController ()

@end

@implementation LZTTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBar.backgroundColor = [UIColor darkGrayColor];
    [self setUpAllController];
}

- (void)setUpAllController {
    LZTHallTableViewController *hallTVC = [[LZTHallTableViewController alloc] init];
    [self setUpOneController:hallTVC title:@"购彩大厅"];
    
    LZTArenaViewController *arenaVC = [[LZTArenaViewController alloc] init];
    arenaVC.view.backgroundColor = [UIColor whiteColor];
    [self setUpOneController:arenaVC title:@"竞技场"];
    
    UIStoryboard *discoverySB = [UIStoryboard storyboardWithName:@"LZTDiscoveryTableViewController" bundle:nil];
    LZTDiscoveryTableViewController *discoveryTVC = [discoverySB instantiateInitialViewController];
    [self setUpOneController:discoveryTVC title:@"发现"];
    
    LZTHistoryTableViewController *historyTVC = [[LZTHistoryTableViewController alloc] init];
    [self setUpOneController:historyTVC title:@"开奖信息"];
    
    LZTLotteryViewController *lotteryVC = [[LZTLotteryViewController alloc] init];
    [self setUpOneController:lotteryVC title:@"我的彩票"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setUpOneController: (UIViewController *)vc title: (NSString *)title {
    if ([vc isKindOfClass:[LZTArenaViewController class]]) {
        UINavigationController *navi = [[LZTArenaNavigationController alloc] initWithRootViewController:vc];
        [self addChildViewController:navi];
        [self setNC:navi];
        navi.tabBarItem.title = title;
    } else {
        UINavigationController *navi = [[LZTNavigationController alloc] initWithRootViewController:vc];
        [self addChildViewController:navi];
        vc.navigationItem.title = title;
        [self setNC:navi];
        navi.tabBarItem.title = title;
    }
}

- (void)setNC: (UINavigationController *)navi {
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSFontAttributeName] = [UIFont boldSystemFontOfSize:14];
    [navi.tabBarItem setTitleTextAttributes:dict forState:UIControlStateNormal];
    [navi.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, -12)];
//    self.tabBar.backgroundColor = [UIColor blackColor];
}

@end
