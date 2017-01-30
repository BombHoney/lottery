//
//  LZTSettingItem.m
//  Lottery
//
//  Created by MacLau on 2017/1/5.
//  Copyright © 2017年 MacLau. All rights reserved.
//

#import "LZTSettingItem.h"

@implementation LZTSettingItem

+ (instancetype)itemWithTitle:(NSString *)title {
    LZTSettingItem *item = [[LZTSettingItem alloc] init];
    item.title = title;
    return item;
}

@end
