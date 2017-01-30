//
//  LZTArenaViewController.m
//  Lottery
//
//  Created by MacLau on 2017/1/2.
//  Copyright © 2017年 MacLau. All rights reserved.
//

#import "LZTArenaViewController.h"

@interface LZTArenaViewController ()

@end

@implementation LZTArenaViewController

- (void)loadView {
    UIImageView *imageV = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    imageV.image = [UIImage imageNamed:@"bg_0"];
    imageV.userInteractionEnabled = YES;
    self.view = imageV;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UISegmentedControl *seg = [[UISegmentedControl alloc] initWithItems:@[@"⚽️",@"🏀"]];
//    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
//    dict[NSForegroundColorAttributeName] = [UIColor whiteColor];
//    [seg setTitleTextAttributes:dict forState:UIControlStateNormal];
    [seg setSelectedSegmentIndex:0];
    self.navigationItem.titleView = seg;
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
