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

@property (nonatomic, strong) NSDictionary *tomList;

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

- (NSDictionary *)tomList {
    if (_tomList == nil) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"tom" ofType:@"plist"];
        _tomList = [NSDictionary dictionaryWithContentsOfFile:path];
    }
    return _tomList;
}

/**
 重构代码
 
 方法：
 1> 将重复的代码复制到新的方法中
 2> 根据需要调整参数
 */

- (void)tomAnimationWithName:(NSString *)name count:(int)count {
    //序列帧动画
    
    //如果正在动画直接退出
    if (self.tom.isAnimating) {
        return; 
    }
    //指定动画突破数组
    NSMutableArray *arrayM = [NSMutableArray array];
    
    //添加播放的图片
    for (int i = 0; i < count; i++) {
        NSString *imageName = [NSString stringWithFormat:@"%@_%02d", name, i];
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

- (IBAction)setAnimationType:(UIButton *)sender {
    [self tomAnimationWithName:sender.titleLabel.text count:[[self.tomList objectForKey:sender.titleLabel.text] intValue]];
}

//- (IBAction)eatBird {
//    /**
//    //序列帧动画
//    //指定动画突破数组
//    NSMutableArray *arrayM = [NSMutableArray array];
//    
//    //添加播放的图片
//    for (int i = 0; i < 40; i++) {
//        NSString *imageName = [NSString stringWithFormat:@"eat_%02d", i];
////        NSLog(@"%@", imageName);
//        UIImage *image = [UIImage imageNamed:imageName];
//        [arrayM addObject:image];
//    }
//    self.tom.animationImages = arrayM;
////    NSLog(@"%@", arrayM);
//    _tom.animationDuration = self.tom.animationImages.count * 0.075;
//    _tom.animationRepeatCount = 1;
//    [self.tom startAnimating];
//     */
//    NSLog(@"%@", [self.tomList objectForKey:@"angry"]);
//    
//    [self tomAnimationWithName:@"angry" count:[[self.tomList objectForKey:@"angry"] intValue]];
//}

//- (IBAction)knockOut {
//    [self tomAnimationWithName:@"knockout" count:81];
//    
//}

@end
