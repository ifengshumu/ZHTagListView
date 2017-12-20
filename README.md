使用方法：
        
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
    [listV setTagClickHandler:^(NSString *tagText, NSUInteger index) {
        //do something...
    }];

//具体的属性使用Demo里有介绍。
