//
//  AppView.m
//  ApplicationPage
//
//  Created by 吴皓翔 on 15/11/15.
//  Copyright © 2015年 Haoxiang. All rights reserved.
//

#import "AppView.h"
#import "AppInfo.h"

@interface AppView()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@end

@implementation AppView

+ (instancetype)appView {
    return [[[NSBundle mainBundle] loadNibNamed:@"View" owner:nil options:nil] lastObject];
}

+ (instancetype)appViewWithAppInfo:(AppInfo *)appInfo {
    AppView *view = [self appView];
    view.appInfo = appInfo;
    return view;
}

- (void)setAppInfo:(AppInfo *)appInfo {
    _appInfo = appInfo;
    
    self.label.text = appInfo.name;
    self.iconView.image = appInfo.image;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
/** 按钮监听方法 */
- (IBAction)click:(UIButton *)button {
    NSLog(@"%s %d", __func__, button.tag);
    
    // 取出appInfo
//    AppInfo *appInfo = self.appList[button.tag];
    
    // 添加一个UILabel到界面上
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(80, 400, 160, 40)];
    // 数值是0表示黑色，1表示纯白
    // alpha表示透明度
    label.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.2];
    
    label.text = self.appInfo.name;
    label.textAlignment = NSTextAlignmentCenter;
    
    [self.superview addSubview:label];
    // 就是ViewControll里的View
    // 动画效果
    // 收尾式动画，修改对象的属性，frame,bounds,alpha
    // 初始透明度，完全透明
    label.alpha = 0.0;
    
    // 禁用按钮
    button.enabled = NO;
    
    // 动画结束之后删除
    // ^ 表示是block，块代码，是一个预先准备好的代码块，可以当做参数传递，在需要的时候执行！
    // 块代码在OC中，使用的非常普遍！
    [UIView animateWithDuration:1.0f animations:^{
        NSLog(@"动画开始");
        // 要修改的动画属性
        label.alpha = 1.0;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1.0 animations:^{
            label.alpha = 0.0;
        } completion:^(BOOL finished) {
            // 动画完成后，所做的操作
            NSLog(@"动画完成");
            
            //            button.enabled = NO;
            
            [label removeFromSuperview];
        }];
    }];
    
    NSLog(@"-------");
    
    // 收尾式动画，不容易监听动画完成时间，而且不容易实现动画嵌套
    //    [UIView beginAnimations:nil context:nil];
    //    [UIView setAnimationDuration:1.0f];
    //    label.alpha = 1.0;
    //    [UIView commitAnimations];
}


@end
