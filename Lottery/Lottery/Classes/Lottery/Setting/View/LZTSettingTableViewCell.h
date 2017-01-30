//
//  LZTSettingTableViewCell.h
//  Lottery
//
//  Created by MacLau on 2017/1/6.
//  Copyright © 2017年 MacLau. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LZTSettingItem;

@interface LZTSettingTableViewCell : UITableViewCell

@property (nonatomic, strong) LZTSettingItem *item;

+ (instancetype)cellWithTableView: (UITableView *)tableView;

@end
