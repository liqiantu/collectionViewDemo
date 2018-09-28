//
//  MyCollectionViewCell.m
//  MyProject
//
//  Created by liqiantu on 2018/9/26.
//  Copyright © 2018年 qiantu. All rights reserved.
//

#import "MyCollectionViewCell.h"

@implementation MyCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    self.backView.layer.borderWidth = 1;
    self.backView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.titleLb.textColor = [UIColor blackColor];
}

- (void)cellSelect:(BOOL)isSelect {
    if (isSelect) {
        self.backView.layer.borderColor = [UIColor redColor].CGColor;
        self.titleLb.textColor = [UIColor redColor];
    }else {
        self.backView.layer.borderColor = [UIColor lightGrayColor].CGColor;
        self.titleLb.textColor = [UIColor blackColor];
    }
}

- (UICollectionViewLayoutAttributes *)preferredLayoutAttributesFittingAttributes:(UICollectionViewLayoutAttributes *)layoutAttributes {
    UICollectionViewLayoutAttributes *attributes = [super preferredLayoutAttributesFittingAttributes:layoutAttributes];
    
    NSMutableDictionary *attrDict = [NSMutableDictionary dictionary];
    attrDict[NSFontAttributeName] = self.titleLb.font;
    CGSize size = [self.titleLb.text sizeWithAttributes:attrDict];
    
    attributes.frame = CGRectMake(0, 0, size.width+40, 40);
    
    return attributes;
}

@end
