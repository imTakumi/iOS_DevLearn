//
//  SearchViewController.h
//  SearchApp
//
//  Created by 吴皓翔 on 15/6/29.
//  Copyright (c) 2015年 Haoxiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>


@property (nonatomic, strong) NSMutableArray * listData;
@property (nonatomic, strong) NSArray *appsArray;

@end
