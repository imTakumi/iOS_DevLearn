//
//  ViewController.m
//  Car
//
//  Created by 吴皓翔 on 15/8/9.
//  Copyright © 2015年 JCCF. All rights reserved.
//

#import "ViewController.h"
#import "CarGroup.h"

@interface ViewController ()
@property (nonatomic, strong) NSArray *carGroups;

@end

@implementation ViewController

- (NSArray *)carGroups {
    if (_carGroups == nil) {
        _carGroups = [CarGroup carGroups];
    }
    return  _carGroups;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%@",self.carGroups);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
