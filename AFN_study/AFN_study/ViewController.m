//
//  ViewController.m
//  AFN_study
//
//  Created by 吴皓翔 on 16/1/13.
//  Copyright © 2016年 Haoxiang. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking/AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    AFNetworkReachabilityManager *netMgr = [AFNetworkReachabilityManager sharedManager];
    [netMgr setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        switch (status) {
            case AFNetworkReachabilityStatusReachableViaWiFi:
                NSLog(@"WIfi状态");
                break;
                
            case AFNetworkReachabilityStatusReachableViaWWAN:
                NSLog(@"WIfi状态");
                break;
                
            case AFNetworkReachabilityStatusNotReachable:
                NSLog(@"没有网络");
                break;
                
            case AFNetworkReachabilityStatusUnknown:
                NSLog(@"未知网络");
                break;
            default:
                break;
        }
    }];
    [netMgr startMonitoring];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [[AFNetworkReachabilityManager sharedManager] stopMonitoring];
}

@end
