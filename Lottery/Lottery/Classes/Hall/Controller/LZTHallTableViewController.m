//
//  LZTHallTableViewController.m
//  Lottery
//
//  Created by MacLau on 2017/1/2.
//  Copyright © 2017年 MacLau. All rights reserved.
//

#import "LZTHallTableViewController.h"
#import "LZTCoverView.h"
#import "LZTPopView.h"

@interface LZTHallTableViewController () <LZTPopViewDelegate>

@end

@implementation LZTHallTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"🎡" style:UIBarButtonItemStylePlain target:self action:@selector(leftButtonOnClick)];
}

- (void)leftButtonOnClick {
    [LZTCoverView show];
    LZTPopView *popView = [LZTPopView showInCenter:self.view.center];
    popView.delegate = self;
//    UIView *popView = [[[NSBundle mainBundle] loadNibNamed:@"LZTPopView" owner:nil options:nil] lastObject];
//    popView.center = self.view.center;
//    [[UIApplication sharedApplication].keyWindow addSubview:popView];
}

- (void)popViewDidClose:(LZTPopView *)popView {
    [UIView animateWithDuration:0.5 animations:^{
        popView.center = CGPointMake(-10, -10);
        popView.transform = CGAffineTransformScale(popView.transform, 0.1, 0.1);
    }completion:^(BOOL finished) {
        [popView removeFromSuperview];
        [LZTCoverView vanish];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
