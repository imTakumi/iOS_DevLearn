//
//  ThirdViewController.m
//  SimpleNavigationDemo
//
//  Created by 吴皓翔 on 15/6/2.
//  Copyright (c) 2015年 Haoxiang. All rights reserved.
//

#import "ThirdViewController.h"
#import "RootViewController.h"

@interface ThirdViewController ()

@end

int _tag = 3;
int _index;

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadView {
    UIView *baseView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    baseView.backgroundColor = [UIColor blueColor];
    self.view = baseView;
    
    UIButton *button1 = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 175, 50)];
    [button1 setTitle:@"Push" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(pushVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    UIButton *button2 = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 175, 50)];
    [button2 setTitle:@"Pop" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(popVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    
    UIButton *button3 = [[UIButton alloc] initWithFrame:CGRectMake(100, 400, 175, 50)];
    [button3 setTitle:@"Root" forState:UIControlStateNormal];
    [button3 addTarget:self action:@selector(rootVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button3];
    
    UIButton *button4 = [[UIButton alloc] initWithFrame:CGRectMake(100, 500, 175, 50)];
    [button4 setTitle:@"Index" forState:UIControlStateNormal];
    [button4 addTarget:self action:@selector(index) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button4];
    
    if (self) {
        self.viewControllerTag = _tag;
        _tag++;
        self.title = [NSString stringWithFormat:@"View is %d",self.viewControllerTag];
    }
    
    UIBarButtonItem *barButton = [[UIBarButtonItem alloc]  initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(setIndex)];
    self.navigationItem.rightBarButtonItem = barButton;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)pushVC {
    ThirdViewController *newVC = [[ThirdViewController alloc] init];
    [self.navigationController pushViewController:newVC animated:YES];
}

- (void)popVC {
    [self.navigationController popViewControllerAnimated:YES];
    _tag--;
}

- (void)rootVC {
    [self.navigationController popToRootViewControllerAnimated:YES];
    _tag = 3;
}

- (void)index {
    UIViewController *secondVC = [[self.navigationController viewControllers] objectAtIndex:_index];
    [self.navigationController popToViewController:secondVC animated:YES];
    _tag = 3;
}

- (void)setIndex {
    UIAlertView *aleat = [[UIAlertView alloc] initWithTitle:@"Git index" message:@"input:" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"Done", nil];
    [aleat setAlertViewStyle:UIAlertViewStylePlainTextInput];
    [aleat show];
    [self alertView:aleat clickedButtonAtIndex:0];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    _index = (int)[alertView textFieldAtIndex:0];
}

@end
