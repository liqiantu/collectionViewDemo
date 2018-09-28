//
//  MyCollectionViewCell.h
//  MyProject
//
//  Created by liqiantu on 2018/9/26.
//  Copyright © 2018年 qiantu. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIView *backView;
@property (weak, nonatomic) IBOutlet UILabel *titleLb;

- (void)cellSelect:(BOOL)isSelect;

@end

NS_ASSUME_NONNULL_END
