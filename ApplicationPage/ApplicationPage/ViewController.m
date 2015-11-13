//
//  ViewController.m
//  ApplicationPage
//
//  Created by 吴皓翔 on 15/11/13.
//  Copyright © 2015年 Haoxiang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) NSArray *appList;
@end

@implementation ViewController

-(NSArray *)appList {
    if (_appList == nil) {
        _appList = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"app" ofType:@"plist"]];
    }
    return _appList;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /**
        界面搭建，九宫格
     */
    
#define kAppViewW 80
#define kAppViewH 90
#define kColCount 3
#define kStartY 20
    
    CGFloat marginX = (self.view.bounds.size.width - kAppViewW * kColCount) / (kColCount + 1);
    CGFloat marginY = 20;
    for (int i = 0; i < 20; i++) {
        /**行
            0,1,2 -> 0
            3,4,5 -> 1
            ...
         */
        int row = i / kColCount;
        
        /**列
            0,3,6 -> 0
            1,4,7 -> 1
            ...
         */
        int col = i % kColCount;
        CGFloat x = marginX + col * (marginX + kAppViewW);
        CGFloat y = kStartY + marginY + row * (marginY +kAppViewH);
        
        UIView *appView = [[UIView alloc] initWithFrame:CGRectMake(x, y, kAppViewW, kAppViewH)];
        appView.backgroundColor = [UIColor redColor];
        [self.view addSubview:appView];
        
        /**实现视图内部细节
            1> UIImageView -> 应用程序图标
            2> UILable -> 程序名称
            3> UIButton ->  下载按钮
            
            CGRectGetMaxY(frame) = frame.origin.y + frame.size.height
        */
        UIImageView *icon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, kAppViewW, 50)];
        icon.backgroundColor = [UIColor yellowColor];
        [appView addSubview:icon];
        
        UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake( 0, CGRectGetMaxY(icon.frame), kAppViewW, 20)];
        lable.backgroundColor = [UIColor blueColor];
        [appView addSubview:lable];
        
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(lable.frame), kAppViewW, 20)];
        button.backgroundColor = [UIColor purpleColor];
        [appView addSubview:button];
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
