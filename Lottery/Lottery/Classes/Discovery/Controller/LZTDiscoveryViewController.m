//
//  LZTDiscoveryViewController.m
//  Lottery
//
//  Created by MacLau on 2017/1/4.
//  Copyright © 2017年 MacLau. All rights reserved.
//

#import "LZTDiscoveryViewController.h"

@interface LZTDiscoveryViewController ()

@end

@implementation LZTDiscoveryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [[UIButton alloc] init];
    [btn setTitle:@"全部  ▶️" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    [btn sizeToFit];
//    [btn addTarget:self action:@selector(print) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.titleView = btn;
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"⬅️" style:UIBarButtonItemStylePlain target:self action:@selector(pop)];
}

- (void)pop {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)print {
    NSLog(@"%s", __func__);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
