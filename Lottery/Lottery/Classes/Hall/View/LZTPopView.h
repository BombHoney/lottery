//
//  LZTPopView.h
//  Lottery
//
//  Created by MacLau on 2017/1/2.
//  Copyright © 2017年 MacLau. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@class LZTPopView;

@protocol LZTPopViewDelegate <NSObject>

- (void)popViewDidClose: (LZTPopView *)popView;

@end

@interface LZTPopView : UIView

@property (nonatomic, weak) id <LZTPopViewDelegate> delegate;

+ (instancetype)showInCenter: (CGPoint)center;

@end
