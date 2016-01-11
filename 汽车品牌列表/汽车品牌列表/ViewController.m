//
//  ViewController.m
//  汽车品牌列表
//
//  Created by 吴皓翔 on 16/1/11.
//  Copyright © 2016年 Haoxiang. All rights reserved.
//

#import "ViewController.h"
#import "CarGroup.h"
#import "Car.h"

@interface ViewController () <UITableViewDataSource>
@property (nonatomic, strong) NSArray *carGroups;
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self tableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableView *)tableView {
    if (_tableView == nil) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _tableView.dataSource = self;
        [self.view addSubview:_tableView];
    }
    return _tableView;
}

- (NSArray *)carGroups {
    if (_carGroups == nil) {
        _carGroups = [CarGroup rootCarGroup];
    }
    return _carGroups;
}

#pragma mark tableView数据源方法

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.carGroups.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    CarGroup *carGoup = self.carGroups[section];
    return carGoup.cars.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //  创建可重用标识符
    static NSString *ID = @"Cell";
    //  表格缓冲区查询可以使用的Cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (cell == nil) {
        //  如果没有可以直接使用的Cell，实例化Cell
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    //  设置Cell内容
    CarGroup *carGroup = self.carGroups[indexPath.section];
    Car *car = carGroup.cars[indexPath.row];
    
    cell.textLabel.text = car.name;
    cell.imageView.image = [UIImage imageNamed:car.icon];
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    CarGroup *carGourp = self.carGroups[section];
    return carGourp.title;
}

@end
