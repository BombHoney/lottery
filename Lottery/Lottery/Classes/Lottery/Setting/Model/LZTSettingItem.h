//
//  LZTSettingItem.h
//  Lottery
//
//  Created by MacLau on 2017/1/5.
//  Copyright © 2017年 MacLau. All rights reserved.
//

typedef enum NSUInteger {
    LZTSettingItemRightViewStateNone,
    LZTSettingItemRightViewStateArrow,
    LZTSettingItemRightViewStateSwitch,
} LZTSettingItemRightViewState;

#import <Foundation/Foundation.h>

@interface LZTSettingItem : NSObject

@property (nonatomic, copy) NSString *title;

@property (nonatomic, assign) LZTSettingItemRightViewState type;

@property (nonatomic, assign) void(^block)();

+ (instancetype)itemWithTitle: (NSString *)title;

@end
