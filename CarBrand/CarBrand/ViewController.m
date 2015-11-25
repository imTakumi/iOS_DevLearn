//
//  ViewController.m
//  CarBrand
//
//  Created by 吴皓翔 on 15/11/25.
//  Copyright © 2015年 吴皓翔. All rights reserved.
//

#import "ViewController.h"
#import "Hero.h"

@interface ViewController () <UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *heros;

@end

@implementation ViewController

- (NSArray *)heros {
    if (_heros == nil)
        _heros = [Hero heros];
    return _heros;
}
- (UITableView *)tableView {
    if (_tableView == nil) {
        //  在创建时必须指定样式
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        
        _tableView.dataSource = self;
        [self.view addSubview:_tableView];
    }
    return _tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self tableView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Datasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.heros.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    
    Hero *hero = self.heros[indexPath.row];
    cell.textLabel.text = hero.name;
    
    return cell;
}

@end
