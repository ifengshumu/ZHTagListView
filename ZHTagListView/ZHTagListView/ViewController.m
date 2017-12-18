//
//  ViewController.m
//  ZHTagListView
//
//  Created by 李志华 on 2017/02/18.
//  Copyright © 2017年 Stephen Lee. All rights reserved.
//

#import "ViewController.h"
#import "ZHTagListView/ZHTagListView.h"
#import "ZHTitleViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"ZH标签排序";
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSMutableArray *list = [NSMutableArray arrayWithObjects:@"OC",
                            @"Java",
                            @"JavaScript",
                            @"jQuery",
                            @"Python",
                            @"都是语言",
                            @"我都不会",
                            @"CF最牛",
                            @"CF最牛X",
                            @"我都会",
                            @"都是电脑语言",
                            @"PHP",
                            @"网站开发",
                            @"Object-C",nil];
    
    ZHTagListView *listV = [[ZHTagListView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 0) tagTexts:list];
    [self.view addSubview:listV];
    listV.backgroundColor = [UIColor orangeColor];
    [listV setTagClickHandler:^(ZHTagListView *tagListView, NSString *tagText, NSUInteger index) {
        [self jump:tagText];
    }];
    
    NSMutableArray *_dataSource = @[@"宝马",
                    @"3系",
                    @"思域",
                    @"本田雅阁",
                    @"尼桑",
                    @"雪佛兰",
                    @"朗动",
                    @"高尔夫",
                    @"沃尔沃",
                    @"兰博基尼",
                    @"法拉利",].mutableCopy;
    
    ZHTagListView *tagList = [[ZHTagListView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(listV.frame)+20, self.view.frame.size.width, 0) tagTexts:_dataSource];
    [self.view addSubview:tagList];
    tagList.tagListInset = UIEdgeInsetsMake(20, 30, 20, 30);
    tagList.backgroundColor = [UIColor yellowColor];
    [tagList.tagButtonList enumerateObjectsUsingBlock:^(UIButton * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (idx == 6) {
            [obj setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        }
    }];
    [tagList setTagClickHandler:^(ZHTagListView *tagListView, NSString *tagText, NSUInteger index) {
        [self jump:tagText];
    }];
}

-(void)jump:(NSString *)text {
    //跳转界面
    ZHTitleViewController *titleVC = [[ZHTitleViewController alloc]init];
    titleVC.titleStr = text;
    [self.navigationController pushViewController:titleVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
