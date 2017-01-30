//
//  LZTPushTableViewController.m
//  Lottery
//
//  Created by MacLau on 2017/1/6.
//  Copyright © 2017年 MacLau. All rights reserved.
//

#import "LZTPushTableViewController.h"
#import "LZTSettingItem.h"
#import "LZTSettingGroup.h"
#import "LZTSettingTableViewCell.h"

@interface LZTPushTableViewController ()

@property (nonatomic, strong) NSMutableArray *groups;

@end

@implementation LZTPushTableViewController

- (instancetype)init {
    return [super initWithStyle:UITableViewStyleGrouped];
}

- (NSMutableArray *)groups {
    if (_groups == nil) {
        NSMutableArray *groups = [NSMutableArray array];
        _groups = groups;
    }
    return _groups;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"⬅️" style:UIBarButtonItemStylePlain target:self action:@selector(pop)];
    [self setUpGroups0];
}

- (void)pop {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)setUpGroups0 {
    LZTSettingItem *item0 = [LZTSettingItem itemWithTitle:@"开奖推送"];
    item0.type = LZTSettingItemRightViewStateArrow;
    LZTSettingItem *item1 = [LZTSettingItem itemWithTitle:@"比分直播"];
    LZTSettingItem *item2 = [LZTSettingItem itemWithTitle:@"中奖动画"];
    LZTSettingItem *item3 = [LZTSettingItem itemWithTitle:@"购彩大厅"];
    NSArray *items0 = @[item0,item1,item2,item3];
    LZTSettingGroup *group0 = [LZTSettingGroup groupWithItems:items0];
    [self.groups addObject:group0];
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
    LZTSettingGroup *group = self.groups[section];
    return group.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    LZTSettingTableViewCell *cell = [LZTSettingTableViewCell cellWithTableView:tableView];
    
    LZTSettingGroup *group = self.groups[indexPath.section];
    LZTSettingItem *item = group.items[indexPath.row];
    cell.item = item;
    
    return cell;
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
