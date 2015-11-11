//
//  ViewController.m
//  Tomcat
//
//  Created by 吴皓翔 on 15/11/11.
//  Copyright © 2015年 Haoxiang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) IBOutlet UIImageView *tom;

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

- (IBAction)eatBird {
    //序列帧动画
    //指定动画突破数组
    NSMutableArray *arrayM = [NSMutableArray array];
    
    //添加播放的图片
    for (int i = 0; i < 40; i++) {
        NSString *imageName = [NSString stringWithFormat:@"eat_%02d", i];
//        NSLog(@"%@", imageName);
        UIImage *image = [UIImage imageNamed:imageName];
        [arrayM addObject:image];
    }
    self.tom.animationImages = arrayM;
//    NSLog(@"%@", arrayM);
    _tom.animationDuration = self.tom.animationImages.count * 0.075;
    _tom.animationRepeatCount = 1;
    [self.tom startAnimating];
}

- (IBAction)knockOut {
    NSMutableArray *arrayM = [NSMutableArray array];
    for (int i = 0; i < 81; i++) {
        NSString *imageName = [NSString stringWithFormat:@"knockout_%02d", i];
        UIImage *image = [UIImage imageNamed:imageName];
        [arrayM addObject:image];
    }
    _tom.animationImages = arrayM;
    _tom.animationDuration = self.tom.animationImages.count * 0.075;
    _tom.animationRepeatCount = 1;
    [self.tom startAnimating];
    
}

@end
