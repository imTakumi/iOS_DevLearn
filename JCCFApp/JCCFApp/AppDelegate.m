//
//  AppDelegate.m
//  JCCFApp
//
//  Created by 吴皓翔 on 15/7/29.
//  Copyright (c) 2015年 JCCF. All rights reserved.
//

#import "AppDelegate.h"
#import "HeadViewController.h"
#import "MobileViewController.h"
#import "MineViewController.h"
#import "AboutViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    UITabBarController *rootController = [[UITabBarController alloc] init];
    rootController.delegate = self;
    
    rootController.tabBar.barTintColor = [UIColor whiteColor];
    
    HeadViewController *headViewController = [[HeadViewController alloc] init];
    UIImage *headNormalImage = [[UIImage imageNamed:@"BOCDTab03.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *headSelectImage = [[UIImage imageNamed:@"BOCDTab03H.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    headViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"首页" image:headNormalImage selectedImage:headSelectImage];
    
    MobileViewController *mobileViewController = [[MobileViewController alloc] init];
    UIImage *mobileNormalImage = [[UIImage imageNamed:@"BOCDTab02.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *mobileSelectImage = [[UIImage imageNamed:@"BOCDTab02H.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    mobileViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"锦程移动" image:mobileNormalImage selectedImage:mobileSelectImage];
    
    MineViewController *mineViewController = [[MineViewController alloc] init];
    UIImage *mineNormalImage = [[UIImage imageNamed:@"BOCDTab01.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *mineSelectImage = [[UIImage imageNamed:@"BOCDTab01H.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    mineViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:mineNormalImage selectedImage:mineSelectImage];
    
    AboutViewController *aboutViewController = [[AboutViewController alloc] init];
    UIImage *aboutNormolImage = [[UIImage imageNamed:@"BOCDTab04.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *aboutSelectImage = [[UIImage imageNamed:@"BOCDTab04H.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    aboutViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"联系我们" image:aboutNormolImage selectedImage:aboutSelectImage];
    
    NSArray *taBarArray = @[headViewController,mobileViewController,mineViewController,aboutViewController];
    
    [rootController setViewControllers:taBarArray animated:YES];
    [self.window setRootViewController:rootController];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
