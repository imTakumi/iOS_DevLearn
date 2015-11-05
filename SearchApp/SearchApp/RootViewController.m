//
//  RootViewController.m
//  SearchApp
//
//  Created by 吴皓翔 on 15/6/29.
//  Copyright (c) 2015年 Haoxiang. All rights reserved.
//

#import "RootViewController.h"
#import "SearchViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)loadView {
    UIView *baseView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    baseView.backgroundColor = [UIColor whiteColor];
    self.view = baseView;
    
    self.navigationItem.title = @"App搜索";
    
    //set textField
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(50, 150, 275 , 40)];
    textField.tag = 101;
    [textField setBorderStyle:UITextBorderStyleRoundedRect];
    textField.placeholder = @"输入您要的App名称";
    textField.returnKeyType = UIReturnKeyDone;
    textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    textField.delegate = self;
    [baseView addSubview:textField];
    
    //set button
    UIButton *searchButton = [[UIButton alloc] initWithFrame:CGRectMake(137.5, 300, 100, 40)];
    searchButton.tag = 102;
    searchButton.enabled = NO;
    [searchButton setTitle:@"搜索" forState:UIControlStateNormal];
    [searchButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [searchButton setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    [searchButton setUserInteractionEnabled:YES];
    [searchButton addTarget:self action:@selector(searchApp) forControlEvents:UIControlEventTouchUpInside];
    [baseView addSubview:searchButton];
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

//searchApp

- (void)searchApp{
    UITextField *textField = (UITextField *)[self.view viewWithTag:101];
    [textField resignFirstResponder];
    SearchViewController *searchViewController = [[SearchViewController alloc] init];
    [self.navigationController pushViewController:searchViewController animated:YES];
}

#pragma mark textFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField;
{
    UIButton *searchButton = (UIButton *)[self.view viewWithTag:102];
    searchButton.enabled = YES;
}

- (BOOL)textFieldShouldClear:(UITextField *)textField{
    UIButton *searchButton = (UIButton *)[self.view viewWithTag:102];
    searchButton.enabled = NO;
    return YES;
}
@end
