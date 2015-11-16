//
//  ViewController.m
//  猜图
//
//  Created by 吴皓翔 on 15/11/16.
//  Copyright © 2015年 Haoxiang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *iconButton;
@property (nonatomic, strong) UIButton *cover;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIButton *)cover {
    if (_cover == nil) {
        _cover = [[UIButton alloc] initWithFrame:self.view.bounds];
        _cover.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.8];
        [self.view addSubview:_cover];
        _cover.alpha = 0.0;
        [_cover addTarget:self action:@selector(bigImage) forControlEvents:UIControlEventTouchUpInside];
    }
    return _cover;
}

//  调整状态栏颜色
- (UIStatusBarStyle)preferredStatusBarStyle {
//  return UIStatusBarStyleDefault;
    return UIStatusBarStyleLightContent;
}

- (IBAction)bigImage {
    /*  1.添加一个蒙板
        2.将图像放在最前面
        3.动态实现效果放大图像
     */

    //  如果没有放大就放大，否则缩小，通过蒙版的alpha判断
    if (self.cover.alpha == 0) {
        //  把子视图前置
        [self.view bringSubviewToFront:self.iconButton];
        
        CGFloat w = self.view.bounds.size.width;
        CGFloat h = w;
        CGFloat y = (self.view.bounds.size.height - w) * 0.5;
    
        [UIView animateWithDuration:1.0f animations:^{
            self.iconButton.frame = CGRectMake(0, y, w, h);
            self.cover.alpha = 1.0;
        }];
    }else {
        [UIView animateWithDuration:1.0f animations:^{
            //  将图像恢复初始位置，删除cover
            self.iconButton.frame = CGRectMake(85, 85, 150, 150);
            self.cover.alpha = 0,0;
        } completion:^(BOOL finished) {
            //        [cover removeFromSuperview];
        }];
    }
}

@end
