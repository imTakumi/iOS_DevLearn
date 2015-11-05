//
//  SearchViewController.m
//  SearchApp
//
//  Created by 吴皓翔 on 15/6/29.
//  Copyright (c) 2015年 Haoxiang. All rights reserved.
//

#import "SearchViewController.h"
#import "AppModel.h"

@interface SearchViewController ()

@end

@implementation SearchViewController

- (void)loadView {
    UIView *searchView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    self.view = searchView;
    [self tableView];
    self.tableView.rowHeight = 44;
    self.navigationItem.title = @"结果";
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"Note" ofType:@"json"];
//    NSData *jsonDate = [[NSData alloc] initWithContentsOfFile:path];
//    
//    NSError *error;
//    id jsonObj = [NSJSONSerialization JSONObjectWithData:jsonDate options:NSJSONReadingMutableLeaves error:&error];
//    if (!jsonObj || error) {
//        NSLog(@"JSON解析失败");
//    }
//    self.listData = [jsonObj objectForKey:@"Record"];
}
    
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (UITableView *)tableView {
    
    UITableView *_tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    [self.view addSubview:_tableView];
    return _tableView;
}

- (NSArray *)apps {
    if (!_appsArray) {
        _appsArray = [AppModel apps];
    }
    return _appsArray;
}

#pragma mark tableViewDateSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.apps.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellID = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellID];
        
    }
    
    AppModel *apps = self.apps[indexPath.row];
    cell.textLabel.text = apps.name;
    cell.imageView.image = [UIImage imageNamed:apps.icon];
    cell.detailTextLabel.text = apps.intro;
    
    return cell;
    
}

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    return 44;
//}

@end
