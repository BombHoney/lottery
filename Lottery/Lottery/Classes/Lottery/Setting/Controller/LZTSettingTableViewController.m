//
//  LZTSettingTableViewController.m
//  Lottery
//
//  Created by MacLau on 2017/1/5.
//  Copyright © 2017年 MacLau. All rights reserved.
//

#import "LZTSettingTableViewController.h"
#import "LZTSettingItem.h"
#import "LZTSettingGroup.h"
#import "LZTSettingTableViewCell.h"
#import "LZTPushTableViewController.h"
#import "MBProgressHUD+XMG.h"

@interface LZTSettingTableViewController ()

//@property (nonatomic, strong) NSMutableArray *items;

@property (nonatomic, strong) NSMutableArray *groups;

@end

@implementation LZTSettingTableViewController

//- (NSMutableArray *)items {
//    if (_items == nil) {
//        NSMutableArray *items = [NSMutableArray array];
//        _items = items;
//    }
//    return _items;
//}

- (NSMutableArray *)groups {
    if (_groups == nil) {
        NSMutableArray *groups = [NSMutableArray array];
        _groups = groups;
    }
    return _groups;
}

- (instancetype)init {
    return [super initWithStyle:UITableViewStyleGrouped];
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    __weak typeof(self) weakSelf = self;
    self.title = @"设置";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"⬅️" style:UIBarButtonItemStylePlain target:self action:@selector(pop)];
    [self setUpGroups0];
    [self setUpGroups1];
    [self setUpGroups2];
}

- (void)setUpGroups0 {
    LZTSettingItem *item0 = [LZTSettingItem itemWithTitle:@"💰  使用兑换码"];
    item0.type = LZTSettingItemRightViewStateArrow;
    NSArray *items0 = @[item0];
    LZTSettingGroup *group0 = [LZTSettingGroup groupWithItems:items0];
    group0.header = @"Baidu";
    group0.footer = @"网易";
    [self.groups addObject:group0];
}

- (void)setUpGroups1 {
    LZTSettingItem *item11 = [LZTSettingItem itemWithTitle:@"⏰  推送和提醒"];
    item11.type = LZTSettingItemRightViewStateArrow;
    LZTSettingItem *item12 = [LZTSettingItem itemWithTitle:@"👋  摇一摇选号"];
    item12.type = LZTSettingItemRightViewStateSwitch;
    LZTSettingItem *item13 = [LZTSettingItem itemWithTitle:@"🔊  声效"];
    item13.type = LZTSettingItemRightViewStateSwitch;
    LZTSettingItem *item14 = [LZTSettingItem itemWithTitle:@"💁  小助手"];
    item14.type = LZTSettingItemRightViewStateSwitch;
    NSArray *items1 = @[item11,item12,item13,item14];
    LZTSettingGroup *group1 = [LZTSettingGroup groupWithItems:items1];
    group1.header = @"Alibaba";
    group1.footer = @"搜狐";
    [self.groups addObject:group1];
}

- (void)setUpGroups2 {
    LZTSettingItem *item21 = [LZTSettingItem itemWithTitle:@"🆕  检查新版本"];
    item21.type = LZTSettingItemRightViewStateArrow;
    item21.block = ^{
        [MBProgressHUD showSuccess:@"已经是最新版本"];
};
    LZTSettingItem *item22 = [LZTSettingItem itemWithTitle:@"🔗  分享"];
    LZTSettingItem *item23 = [LZTSettingItem itemWithTitle:@"🎺  推荐"];
    LZTSettingItem *item24 = [LZTSettingItem itemWithTitle:@"ℹ️  小助手"];
    NSArray *items2 = @[item21,item22,item23,item24];
    LZTSettingGroup *group2 = [LZTSettingGroup groupWithItems:items2];
    group2.header = @"Tencent";
    group2.footer = @"雅虎";
    [self.groups addObject:group2];
}

- (void)pop {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.groups.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    if (section == 0) {
//        return 1;
//    } else {
//        return 4;
//    }
//    NSArray *items = self.groups[section];
//    return items.count;
    LZTSettingGroup *group = self.groups[section];
    return group.items.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    LZTSettingTableViewCell *cell = [LZTSettingTableViewCell cellWithTableView:tableView];
    
    LZTSettingGroup *group = self.groups[indexPath.section];
    LZTSettingItem *item = group.items[indexPath.row];
    cell.item = item;
//    if (indexPath.section == 0) {
//        if (indexPath.row == 0) {
//            cell.textLabel.text = @"💰  使用兑换码";
//        }
//    } else if (indexPath.section == 1) {
//        if (indexPath.row == 0) {
//            cell.textLabel.text = @"⏰  推送和提醒";
//        } else if (indexPath.row == 1) {
//            cell.textLabel.text = @"👋  摇一摇选号";
//        } else if (indexPath.row == 2) {
//            cell.textLabel.text = @"🔊  声效";
//        } else if (indexPath.row == 3) {
//            cell.textLabel.text = @"💁  小助手";
//        }
//    } else if (indexPath.section == 2) {
//        if (indexPath.row == 0) {
//            cell.textLabel.text = @"🆕  检查新版本";
//        } else if (indexPath.row == 1) {
//            cell.textLabel.text = @"🔗  分享";
//        } else if (indexPath.row == 2) {
//            cell.textLabel.text = @"🎺  推荐";
//        } else if (indexPath.row == 3) {
//            cell.textLabel.text = @"ℹ️  小助手";
//        }
//    }
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
//    if (section == 0) {
//        return @"Baidu";
//    } else if (section == 1) {
//        return @"Alibaba";
//    } else {
//        return @"Tencent";
//    }
    LZTSettingGroup *group = self.groups[section];
    return group.header;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    LZTSettingGroup *group = self.groups[section];
    return group.footer;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    LZTSettingGroup *group = self.groups[indexPath.section];
    LZTSettingItem *item = group.items[indexPath.row];
    if (item.block) {
        item.block();
    } else if (item.type == LZTSettingItemRightViewStateArrow) {
        LZTPushTableViewController *vc = [[LZTPushTableViewController alloc] init];
        vc.title = item.title;
        [self.navigationController pushViewController:vc animated:YES];
    }
}
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
