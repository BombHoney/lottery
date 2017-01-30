//
//  LZTCoverView.m
//  Lottery
//
//  Created by MacLau on 2017/1/2.
//  Copyright © 2017年 MacLau. All rights reserved.
//

#import "LZTCoverView.h"

@interface LZTCoverView ()

@end

@implementation LZTCoverView

+ (void)show {
    LZTCoverView *cover = [[LZTCoverView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    cover.backgroundColor = [UIColor lightGrayColor];
    cover.alpha = 0.7;
    [[UIApplication sharedApplication].keyWindow addSubview:cover];
}

+ (void)vanish {
    for (UIView *view in [UIApplication sharedApplication].keyWindow.subviews) {
        if ([view isKindOfClass:[LZTCoverView class]]) {
            [view removeFromSuperview];
            break;
        }
    }
}
//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self removeFromSuperview];
//}

@end
