//
//  LZTSettingGroup.m
//  Lottery
//
//  Created by MacLau on 2017/1/6.
//  Copyright © 2017年 MacLau. All rights reserved.
//

#import "LZTSettingGroup.h"

@implementation LZTSettingGroup

+ (instancetype)groupWithItems:(NSArray *)items {
    LZTSettingGroup *group = [[LZTSettingGroup alloc] init];
    group.items = items;
    return group;
}

@end
