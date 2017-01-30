//
//  LZTCollectionViewCell.m
//  Lottery
//
//  Created by MacLau on 2017/1/4.
//  Copyright © 2017年 MacLau. All rights reserved.
//

#import "LZTCollectionViewCell.h"
#import "LZTTabBarController.h"

@interface LZTCollectionViewCell ()

@property (nonatomic, weak) UIImageView *imageV;

@property (nonatomic, weak) UIButton *startBtn;

@end

@implementation LZTCollectionViewCell

- (UIButton *)startBtn {
    if (_startBtn == nil) {
        UIButton *startBtn = [[UIButton alloc] init];
        [startBtn setTitle:@"  立即体验  " forState:UIControlStateNormal];
        [startBtn setBackgroundColor:[UIColor redColor]];
        [startBtn setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
        startBtn.alpha = 0.7;
        [startBtn sizeToFit];
        startBtn.center = CGPointMake(self.bounds.size.width / 2, self.bounds.size.height * 0.9);
        [startBtn setClipsToBounds:YES];
        startBtn.layer.cornerRadius = 5;
        [self.contentView addSubview:startBtn];
        [startBtn addTarget:self action:@selector(btnOnClick) forControlEvents:UIControlEventTouchUpInside];
        _startBtn = startBtn;
    }
    return _startBtn;
}

- (UIImageView *)imageV {
    if (_imageV == nil) {
        UIImageView *imageV = [[UIImageView alloc] initWithFrame:self.bounds];
        [self.contentView addSubview:imageV];
        _imageV = imageV;
    }
    return _imageV;
}

- (void)setImage:(UIImage *)image {
    _image = image;
    self.imageV.image = image;
}

- (void)setIndexPath:(NSIndexPath *)indexPath pageCount:(NSInteger)pageCount {
    if (indexPath.item == pageCount - 1) {
        self.startBtn.hidden = NO;
    } else {
        self.startBtn.hidden = YES;
    }
}

- (void)btnOnClick {
    UIViewController *vc = [[LZTTabBarController alloc] init];
    [UIApplication sharedApplication].keyWindow.rootViewController = vc;
}

@end
