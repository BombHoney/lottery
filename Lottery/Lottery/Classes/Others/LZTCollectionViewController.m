//
//  LZTCollectionViewController.m
//  Lottery
//
//  Created by MacLau on 2017/1/4.
//  Copyright © 2017年 MacLau. All rights reserved.
//

#import "LZTCollectionViewController.h"
#import "LZTCollectionViewCell.h"

#define LZTPageCount 4

@interface LZTCollectionViewController ()

@property (nonatomic, assign) CGFloat lastOffset;

@property (nonatomic, weak) UIImageView *imageFont;

@end

@implementation LZTCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (instancetype)init {
    UICollectionViewFlowLayout *flow = [[UICollectionViewFlowLayout alloc] init];
    flow.itemSize = [UIScreen mainScreen].bounds.size;
    flow.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    flow.minimumLineSpacing = 0;
    flow.minimumInteritemSpacing = 0;
    return [super initWithCollectionViewLayout:flow];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    [self.collectionView registerClass:[LZTCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    self.collectionView.pagingEnabled = YES;
    self.collectionView.bounces = NO;
    self.collectionView.showsHorizontalScrollIndicator = NO;
    // Do any additional setup after loading the view.
    [self addChildImageView];
}

- (void)addChildImageView {
    UIImageView *imageLine = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg_2"]];
    CGRect rect = imageLine.frame;
    rect.origin.y -= 200;
    imageLine.frame = rect;
    UIImageView *imageFont = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg_3"]];
    imageFont.center = CGPointMake(self.view.bounds.size.width / 2, self.view.bounds.size.height * 0.7);
    self.imageFont = imageFont;
    [self.collectionView addSubview:imageLine];
    [self.collectionView addSubview:imageFont];
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    CGFloat offSet = scrollView.contentOffset.x;
    CGFloat offsetX = offSet - self.lastOffset;
    self.lastOffset = offSet;
    CGRect rect = self.imageFont.frame;
    rect.origin.x += offsetX * 2;
    self.imageFont.frame = rect;
    [UIView animateWithDuration:0.25 animations:^{
        CGRect rect = self.imageFont.frame;
        rect.origin.x -= offsetX;
        self.imageFont.frame = rect;
    }];
    
//    if (offSet / offsetX > 3) {
//        UIViewController *vc = [[LZTTabBarController alloc] init];
//        [self.navigationController pushViewController:vc animated:YES];
//    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return LZTPageCount;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    LZTCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
//    if (cell == nil) {
//        cell = [[LZTCollectionViewCell alloc] init];
//    }
    NSString *name = [NSString stringWithFormat:@"guide_%ld",indexPath.item];
    UIImage *image = [UIImage imageNamed:name];
    cell.image = image;
    [cell setIndexPath:indexPath pageCount:LZTPageCount];
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
