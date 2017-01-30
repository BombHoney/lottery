//
//  LZTSettingGroup.h
//  Lottery
//
//  Created by MacLau on 2017/1/6.
//  Copyright © 2017年 MacLau. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LZTSettingGroup : NSObject

@property (nonatomic, copy) NSString *header;

@property (nonatomic, copy) NSString *footer;

@property (nonatomic, strong) NSArray *items;

+ (instancetype)groupWithItems: (NSArray *)items;

@end
