//
//  LZTSettingTableViewCell.m
//  Lottery
//
//  Created by MacLau on 2017/1/6.
//  Copyright © 2017年 MacLau. All rights reserved.
//

#import "LZTSettingTableViewCell.h"
#import "LZTSettingItem.h"

@implementation LZTSettingTableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    static NSString *ID = @"cell";
    LZTSettingTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[LZTSettingTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    return cell;
}

- (void)setItem:(LZTSettingItem *)item {
    _item = item;
    self.textLabel.text = item.title;
    [self setUpRightViewState];
}

- (void)setUpRightViewState {
    if (_item.type == LZTSettingItemRightViewStateArrow) {
        UIButton *btn = [[UIButton alloc] init];
        [btn setTitle:@"➡️" forState:UIControlStateNormal];
        [btn sizeToFit];
        self.accessoryView = btn;
    } else if (_item.type == LZTSettingItemRightViewStateSwitch) {
        self.accessoryView = [[UISwitch alloc] init];
    } else {
        self.accessoryView = nil;
    }
}
//- (void)awakeFromNib {
//    [super awakeFromNib];
//    // Initialization code
//}
//
//- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
//    [super setSelected:selected animated:animated];
//
//    // Configure the view for the selected state
//}

@end
