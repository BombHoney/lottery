//
//  LZTCollectionViewCell.h
//  Lottery
//
//  Created by MacLau on 2017/1/4.
//  Copyright © 2017年 MacLau. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LZTCollectionViewCell : UICollectionViewCell

@property (nonatomic, weak) UIImage *image;

- (void) setIndexPath: (NSIndexPath *)indexPath pageCount: (NSInteger)pageCount;

@end
