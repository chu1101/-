//
//  CJMNewsListViewController.m
//  生活圈
//
//  Created by 1 10 1 on 16/8/29.
//  Copyright © 2016年 1 10 1. All rights reserved.
//

#import "CJMNewsListViewController.h"
static NSString *cellId = @"cellId";
@interface CJMNewsListViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, weak) UITableView *tableView;
@end

@implementation CJMNewsListViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Navigation
#pragma mark - UITableViewDatasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 15;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    //qu取cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    //设置cell
    cell.textLabel.text = @(indexPath.row).description;
    //返回cell
    return cell;
}
#pragma mark - 设置界面
- (void)setupUI{

    UITableView *tv = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
    
    [self.view addSubview: tv];
    
    //自动布局
    [tv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    
    //注册cell
    [tv registerClass:[UITableViewCell class] forCellReuseIdentifier:cellId];
    
    //设置数据源方法
    tv.dataSource = self;
    tv.delegate = self;
    
    //记录成员变量
    _tableView = tv;
    
}
@end
