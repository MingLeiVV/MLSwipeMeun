//
//  MLMeunView.m
//  MLSwipeMeun
//
//  Created by 吴明磊 on 16/11/3.
//  Copyright (c) 2016年 Minlay. All rights reserved.
//

#import "MLMeunView.h"

@interface MLMeunView ()<UIScrollViewDelegate>
@property(nonatomic, strong)UIScrollView *meunScrollView;
@end
@implementation MLMeunView


- (instancetype)initWithFrame:(CGRect)frame titles:(NSArray *)titles {
   self =  [super initWithFrame:frame];
    self.frame = frame;
    [self resetTopBar:titles];
    return self;
}


- (void)resetTopBar:(NSArray *)titles {
    [self addSubview:self.meunScrollView];
    for (<#type *object#> in <#collection#>) {
        <#statements#>
    }
}

- (UIScrollView *)meunScrollView {
    if (!_meunScrollView) {
        _meunScrollView = [[UIScrollView alloc]init];
        _meunScrollView.showsHorizontalScrollIndicator = NO;
        _meunScrollView.showsVerticalScrollIndicator = NO;
        _meunScrollView.backgroundColor = [UIColor clearColor];
        _meunScrollView.delegate = self;
        _meunScrollView.frame = self.bounds;
    }
    return _meunScrollView;
}
@end
