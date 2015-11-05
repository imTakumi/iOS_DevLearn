//
//  RootViewController.m
//  SimpleNavigationDemo
//
//  Created by 吴皓翔 on 15/6/2.
//  Copyright (c) 2015年 Haoxiang. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationController.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadView {
    UIView *baseView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    baseView.backgroundColor = [UIColor purpleColor];
    self.view

    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 175, 50)];
    [button setTitle:@"Push" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(pushVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    self.title = @"Root";
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:self action:@selector(study)];
//    self.navigationController.navigationItem.leftBarButtonItem = leftItem;
    self.navigationItem.leftBarButtonItem = leftItem;
    
    
    UIToolbar *toolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 667-44, 375, 44)];
    toolBar.barStyle = UIBarStyleDefault;
//    [self.view addSubview:toolBar];
    
    UIBarButtonItem *addItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:nil];
    
    UIBarButtonItem *saveItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:nil];
    
    UIBarButtonItem *titleItem = [[UIBarButtonItem alloc] initWithTitle:@"Title" style:UIBarButtonItemStylePlain target:self action:nil];
    
    UIBarButtonItem *flexibleItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    
    NSArray *item = @[addItem, flexibleItem, saveItem, flexibleItem, titleItem];
    
    [toolBar setItems:item animated:YES];
    [self setToolbarItems:item];
    [self.navigationController setToolbarHidden:NO animated:NO];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - Target Action
- (void)pushVC {
    
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondVC animated:YES];
}

- (void)study {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"study" message:@"hello" delegate:nil cancelButtonTitle:@"Camcel" otherButtonTitles:@"OK", nil];
    [alertView show];
}

#pragma mark - NavigationDelegate
/*
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    NSLog(@"willShowViewController");
}
- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    NSLog(@"didShowViewController");
}
 */
@end
