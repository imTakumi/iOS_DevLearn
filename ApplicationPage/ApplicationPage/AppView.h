//
//  AppView.h
//  ApplicationPage
//
//  Created by 吴皓翔 on 15/11/15.
//  Copyright © 2015年 Haoxiang. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AppInfo;

@interface AppView : UIView

// 类方法，方便调用视图
+ (instancetype)appView;

// 实例化appView
+ (instancetype)appViewWithAppInfo:(AppInfo *)appInfo;

//  自定义视图中显示的数据来源是数据模型
//  使用模型设置自定义视图的显示
@property (nonatomic, strong) AppInfo *appInfo;

@end
