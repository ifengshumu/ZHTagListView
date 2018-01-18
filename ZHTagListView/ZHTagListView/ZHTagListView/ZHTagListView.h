//
//  ZHTagListView.h
//  SummaryAndCustom
//
//  Created by 李志华 on 2017/02/18.
//  Copyright © 2017年 Stephen Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZHTagListConfiguration : NSObject
+ (ZHTagListConfiguration *)defaultConfiguration;

///标签高度，默认30
@property (nonatomic, assign) CGFloat tagHeight;
///文字左右边距，确定标签宽度，默认10
@property (nonatomic, assign) CGFloat tagTextMargin;
///标签文字字体，默认size=15
@property (nonatomic, strong) UIFont *tagTextFont;
///标签文字颜色，默认grayColor
@property (nonatomic, strong) UIColor *tagTextColor;
///标签最大宽度，默认字体六个字的宽度
@property (nonatomic, assign) CGFloat tagMaxWidth;
///整个标签四周边距，默认:UIEdgeInsetsZero
@property (nonatomic, assign) UIEdgeInsets tagListInset;
///标签左右间距，默认10
@property (nonatomic, assign) CGFloat tagHorizontalSpace;
///标签上下间距，默认10
@property (nonatomic, assign) CGFloat tagVerticalSpace;
@end


@interface ZHTagListView : UIView
///frame高度根据内容和边距确定
- (instancetype)initWithFrame:(CGRect)frame configuration:(ZHTagListConfiguration *)configuration tagTexts:(NSArray *)tagTexts;

@property (nonatomic, readonly, copy) NSArray<NSString *> *tagTexts;
@property (nonatomic, readonly, copy) NSArray<UIButton *> *tagButtonList;

@property (nonatomic, copy) void (^tagClickHandler)(ZHTagListView *tagListView, NSString *tagText, NSUInteger index);
@end
