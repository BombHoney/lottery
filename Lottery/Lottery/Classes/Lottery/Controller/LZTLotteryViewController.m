//
//  LZTLotteryViewController.m
//  Lottery
//
//  Created by MacLau on 2017/1/2.
//  Copyright © 2017年 MacLau. All rights reserved.
//

#import "LZTLotteryViewController.h"
#import "LZTSettingTableViewController.h"

//IB_DESIGNABLE

@interface LZTLotteryViewController ()

@property (weak, nonatomic) IBOutlet UIButton *loginBtn;

@end

@implementation LZTLotteryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    UIImage *image = self.login.currentBackgroundImage;
//    image = [image stretchableImageWithLeftCapWidth:(image.size.width / 2) topCapHeight:(image.size.height / 2)];
//    [self.login setBackgroundImage:image forState:UIControlStateNormal];
    [self.loginBtn.layer setMasksToBounds:YES];
    [self.loginBtn.layer setCornerRadius:10];
//    UIButton *btnL = [[UIButton alloc] init];
//    [btnL setTitle:@"💁" forState:UIControlStateNormal];
//    [btnL sizeToFit];
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btnL];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"💁" style:UIBarButtonItemStylePlain target:self action:@selector(leftBtnOnClick)];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"⚙️" style:UIBarButtonItemStylePlain target:self action:@selector(rightBtnOnClick)];
//    UIButton *btnR = [[UIButton alloc] init];
//    [btnR setTitle:@"⚙️" forState:UIControlStateNormal];
//    [btnR sizeToFit];
//    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btnR];
}

- (void)leftBtnOnClick {
//    NSLog(@"%s",__func__);
}

- (void)rightBtnOnClick {
//    NSLog(@"%s",__func__);
    UIViewController *vc = [[LZTSettingTableViewController alloc] init];
//    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
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
