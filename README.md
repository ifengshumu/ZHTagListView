# 标签，自适应宽度，自动折行，可限制字数或者宽度

## 支持cocoapods导入
```
pod 'ZHTagListView'
```

## 使用方法：
```
NSMutableArray *list = [NSMutableArray arrayWithObjects:
@"Java",
@"JavaScript",
@"C",
@"C#",
@"C++",
@".NET",
@"Python",
@"PHP",
@"HTML5",
@"Swift",
@"Object-C",nil];

ZHTagListView *listV = [[ZHTagListView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 0) configuration:[ZHTagListConfiguration defaultConfiguration] tagTexts:list];
listV.backgroundColor = [UIColor orangeColor];
[self.view addSubview:listV];
[listV setTagClickHandler:^(ZHTagListView *tagListView, NSString *tagText, NSUInteger index) {
[self jump:tagText];
}];
```
## 具体的属性使用Demo里有介绍。
