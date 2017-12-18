//
//  ZHTagListView.m
//  SummaryAndCustom
//
//  Created by 李志华 on 2017/02/18.
//  Copyright © 2017年 Stephen Lee. All rights reserved.
//

#import "ZHTagListView.h"

@interface ZHTagListView ()

@property (nonatomic, strong) NSMutableArray *tagBtnArray;

@property (nonatomic, copy) NSArray *tags;

@end


@implementation ZHTagListView

- (instancetype)initWithFrame:(CGRect)frame tagTexts:(NSArray *)tagTexts {
    self = [super initWithFrame:frame];
    if (self) {
        self.tagHeight = 35.0;
        self.tagListInset = UIEdgeInsetsMake(0, 10, 0, 10);
        self.tagHorizontalSpace = 10.0;
        self.tagVerticalSpace = 10.0;
        self.tagBtnArray = [NSMutableArray array];
        self.tags = tagTexts;
        [self setupTagListView];
    }
    return self;
}


-(void)setupTagListView {
    while (self.subviews.count) {
        [self.subviews.lastObject removeFromSuperview];
    }
    [self.tagBtnArray removeAllObjects];
    
    CGFloat kWidth = [UIScreen mainScreen].bounds.size.width - self.tagListInset.left - self.tagListInset.right;

    CGFloat tagBtnX = self.tagListInset.left;
    CGFloat tagBtnY = self.tagListInset.top;
    CGFloat tagBtnH = self.tagHeight;
    
    for (int i = 0; i < self.tags.count; i++) {
        UIButton *tagBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //设置按钮的样式
        tagBtn.layer.borderColor = [UIColor grayColor].CGColor;
        tagBtn.layer.borderWidth = 0.5;
        tagBtn.layer.cornerRadius = 2.5;
        [tagBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        tagBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        [tagBtn setTitle:self.tags[i] forState:UIControlStateNormal];
        tagBtn.tag = 1000+i;
        [tagBtn addTarget:self action:@selector(tagBtnClick:) forControlEvents:UIControlEventTouchUpInside];
        
        //计算文字大小
        CGSize btnSize = [self.tags[i] boundingRectWithSize:CGSizeMake(MAXFLOAT, tagBtnH) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:tagBtn.titleLabel.font} context:nil].size;
        CGFloat tagBtnW = btnSize.width + 2 * self.tagHorizontalSpace;
        //判断按钮是否超过屏幕的宽
        if ((tagBtnX + tagBtnW) > kWidth) {
            tagBtnX = self.tagListInset.left;
            tagBtnY += tagBtnH + self.tagVerticalSpace;
        }
        //设置按钮的位置
        tagBtn.frame = CGRectMake(tagBtnX, tagBtnY, tagBtnW, tagBtnH);
        
        tagBtnX += tagBtnW + self.tagHorizontalSpace;
        
        [self addSubview:tagBtn];
        [self.tagBtnArray addObject:tagBtn];
        if (i == self.tags.count - 1) {
            CGRect rect = self.frame;
            rect.size.height = CGRectGetMaxY(tagBtn.frame) + self.tagListInset.bottom;
            self.frame = rect;
        }
    }
}


-(void)tagBtnClick:(UIButton *)btn {
    if (self.tagClickHandler) {
        self.tagClickHandler(self, btn.titleLabel.text, btn.tag-1000);
    }
}

- (void)setTagHeight:(CGFloat)tagHeight {
    if (_tagHeight != tagHeight) {
        _tagHeight = tagHeight;
        [self setupTagListView];
    }
}

- (void)setTagListInset:(UIEdgeInsets)tagListInset {
    BOOL isTop = _tagListInset.top == tagListInset.top;
    BOOL isLeft = _tagListInset.left == tagListInset.left;
    BOOL isBottom = _tagListInset.bottom == tagListInset.bottom;
    BOOL isRight = _tagListInset.right == tagListInset.right;
    if (!isTop || !isLeft || !isBottom || !isRight) {
        _tagListInset = UIEdgeInsetsFromString(NSStringFromUIEdgeInsets(tagListInset));
        [self setupTagListView];
    }
}

- (void)setTagHorizontalSpace:(CGFloat)tagHorizontalSpace {
    if (_tagHorizontalSpace != tagHorizontalSpace) {
        _tagHorizontalSpace = tagHorizontalSpace;
        [self setupTagListView];
    }
}

- (void)setTagVerticalSpace:(CGFloat)tagVerticalSpace {
    if (_tagVerticalSpace != tagVerticalSpace) {
        _tagVerticalSpace = tagVerticalSpace;
        [self setupTagListView];
    }
}


- (NSArray<NSString *> *)tagTexts {
    return self.tags;
}

- (NSArray<UIButton *> *)tagButtonList {
    return self.tagBtnArray;
}

@end
