//
//  LZTNavigationController.m
//  Lottery
//
//  Created by MacLau on 2017/1/2.
//  Copyright © 2017年 MacLau. All rights reserved.
//

#import "LZTNavigationController.h"

@interface LZTNavigationController () <UINavigationControllerDelegate>

@property (nonatomic, strong) id popGesture;

@end

@implementation LZTNavigationController

+ (void)initialize {
    if (self == [LZTNavigationController class]) {
        NSMutableArray *array = [NSMutableArray array];
        [array addObject:[LZTNavigationController class]];
        UINavigationBar *bar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:array];
        [bar setBackgroundImage:[UIImage imageNamed:@"bg"] forBarMetrics:UIBarMetricsDefault];
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        dict[NSFontAttributeName] = [UIFont boldSystemFontOfSize:22];
        dict[NSForegroundColorAttributeName] = [UIColor blackColor];
        [bar setTitleTextAttributes:dict];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.popGesture = self.interactivePopGestureRecognizer.delegate;
    self.delegate = self;
}

- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.viewControllers[0] == viewController) {
        self.interactivePopGestureRecognizer.delegate = self.popGesture;
    } else {
        self.interactivePopGestureRecognizer.delegate = nil;
    }
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
