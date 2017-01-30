//
//  LZTPopView.m
//  Lottery
//
//  Created by MacLau on 2017/1/2.
//  Copyright © 2017年 MacLau. All rights reserved.
//

#import "LZTPopView.h"

@implementation LZTPopView

+ (instancetype)showInCenter: (CGPoint)center {
    UIView *popView = [[[NSBundle mainBundle] loadNibNamed:@"LZTPopView" owner:nil options:nil] lastObject];
    popView.center = center;
//    popView.layer.masksToBounds = YES;
    popView.clipsToBounds = YES;
    popView.layer.cornerRadius = 10;
    [[UIApplication sharedApplication].keyWindow addSubview:popView];
    return (id)popView;
}

- (IBAction)close:(UIButton *)sender {    
    if ([self.delegate respondsToSelector:@selector(popViewDidClose:)]) {
        [self.delegate popViewDidClose:self];
    }
}

@end
