//
//  AppDelegate.m
//  UITabBarController
//
//  Created by 吴皓翔 on 15/6/4.
//  Copyright (c) 2015年 Haoxiang. All rights reserved.
//

#import "AppDelegate.h"
#import "FristViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"

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
    
    FristViewController *fristViewController = [[FristViewController alloc] init];
    fristViewController.title = @"聊天";
    UITabBarItem *fristTabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemRecents tag:101];
    fristViewController.tabBarItem = fristTabBarItem;
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:fristViewController];
    
    SecondViewController *secondViewController = [[SecondViewController alloc] init];
    UITabBarItem *secondTabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:102];
    secondViewController.title = @"联系人";
    secondViewController.tabBarItem = secondTabBarItem;
    
    ThirdViewController *thirdViewController = [[ThirdViewController alloc] init];
    UITabBarItem *thirdTabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemSearch tag:103];
    thirdViewController.title = @"搜索";
    thirdViewController.tabBarItem = thirdTabBarItem;
    
    FourthViewController *fourthViewController = [[FourthViewController alloc] init];
    UITabBarItem *fourthTabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFeatured tag:104];
    fourthViewController.title = @"更多";
    fourthViewController.tabBarItem = fourthTabBarItem;
    
    NSArray *tabBarItem = @[navigationController, secondViewController, thirdViewController, fourthViewController];
    
    [rootController setViewControllers:tabBarItem animated:YES];
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

#pragma mark - UITabBarControllerDelegate 
- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController{
    NSLog(@"tabBarController shouldSelectViewController:%@",viewController);
    return YES;
}
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    NSLog(@"tabBarController didSelectViewController:%@",viewController);
}

- (void)tabBarController:(UITabBarController *)tabBarController willBeginCustomizingViewControllers:(NSArray *)viewControllers{
    NSLog(@"willBeginCustomizingViewControllers:%@",viewControllers);
}

@end
