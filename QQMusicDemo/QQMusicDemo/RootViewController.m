//
//  RootViewController.m
//  QQMusicDemo
//
//  Created by 吴皓翔 on 15/6/1.
//  Copyright (c) 2015年 Haoxiang. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIProgressView *progress = [[UIProgressView alloc] initWithFrame:CGRectMake((375-300)/2.0, 627/2.0, 300, 40)];
    
    [self.view addSubview:progress];
    
    NSTimer *timer = [[NSTimer alloc] init];
    
    timer=[NSTimer scheduledTimerWithTimeInterval:0.01f target:self selector:@selector(update) userInfo:nil repeats:YES];
    progressView=[[UIAlertView alloc]initWithTitle:@"ok" message:@"0%" delegate:self cancelButtonTitle:nil otherButtonTitles: nil];
    alterProgress=[[UIProgressView alloc]initWithProgressViewStyle:UIProgressViewStyleDefault];
    alterProgress.frame=CGRectMake(30, 80, 225, 30);
    [progressView addSubview:alterProgress];
    [progressView show];
    [progressView release];  }

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
