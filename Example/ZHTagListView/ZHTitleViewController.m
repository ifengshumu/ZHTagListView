//
//  ViewController.m
//  ZHTagListView
//
//  Created by 李志华 on 2017/02/18.
//  Copyright © 2017年 leezhihua. All rights reserved.
//

#import "ZHTitleViewController.h"

@interface ZHTitleViewController ()

@end

@implementation ZHTitleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.titleStr;
    self.view.backgroundColor = [UIColor whiteColor];
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

@end
