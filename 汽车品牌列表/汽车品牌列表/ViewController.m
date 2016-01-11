//
//  ViewController.m
//  汽车品牌列表
//
//  Created by 吴皓翔 on 16/1/11.
//  Copyright © 2016年 Haoxiang. All rights reserved.
//

#import "ViewController.h"
#import "CarGroup.h"

@interface ViewController ()
@property (nonatomic, strong) NSArray *carGroups;
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

- (NSArray *)carGroups {
    if (_carGroups == nil) {
        _carGroups = [CarGroup rootCarGroup];
    }
    return _carGroups;
}
@end
