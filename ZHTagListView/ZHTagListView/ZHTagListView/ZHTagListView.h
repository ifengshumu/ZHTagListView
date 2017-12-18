//
//  ZHTagListView.h
//  SummaryAndCustom
//
//  Created by 李志华 on 2017/02/18.
//  Copyright © 2017年 Stephen Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZHTagListView : UIView
- (instancetype)initWithFrame:(CGRect)frame tagTexts:(NSArray *)tagTexts;


@property (nonatomic, readonly, copy) NSArray<NSString *> *tagTexts;
@property (nonatomic, readonly, copy) NSArray<UIButton *> *tagButtonList;

///标签高度，默认35
@property (nonatomic, assign) CGFloat tagHeight;
///整个标签四周边距，默认:(0, 10, 0, 10)
@property (nonatomic, assign) UIEdgeInsets tagListInset;
///左右间距，默认10
@property (nonatomic, assign) CGFloat tagHorizontalSpace;
///上下间距，默认10
@property (nonatomic, assign) CGFloat tagVerticalSpace;


@property (nonatomic, copy) void (^tagClickHandler)(ZHTagListView *tagListView, NSString *tagText, NSUInteger index);
@end
