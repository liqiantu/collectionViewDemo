//
//  MyFlowLayout.m
//  MyProject
//
//  Created by liqiantu on 2018/9/26.
//  Copyright © 2018年 qiantu. All rights reserved.
//

#import "MyFlowLayout.h"

@implementation MyFlowLayout

//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//        self.estimatedItemSize = CGSizeMake(20, 20);
//    }
//    return self;
//}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        self.estimatedItemSize = CGSizeMake(20, 20);
        self.minimumLineSpacing = 20;
        self.minimumInteritemSpacing = 5;
    }
    return self;
}

@end
