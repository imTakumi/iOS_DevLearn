//
//  AppDelegate.m
//  UIView
//
//  Created by 吴皓翔 on 15/5/19.
//  Copyright (c) 2015年 Haoxiang. All rights reserved.
//

#import "AppDelegate.h"
#import "ChessPiece.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor grayColor];
    [self.window makeKeyAndVisible];
    /*
    view1 = [[UIView alloc] initWithFrame:CGRectMake((375 - 200) / 2.0, 150, 200, 100)];
    view1.backgroundColor = [UIColor redColor];
    view1.tag = 1;
    view1.clipsToBounds = YES;
    [self.window addSubview:view1];
    
    view2 = [[UIView alloc] initWithFrame:CGRectMake(100 , 0, 100, 200)];
    view2.backgroundColor = [UIColor blueColor];
    view2.tag = 2;
    [view1 addSubview:view2];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn1.frame = CGRectMake(60, 500, 140, 35);
    [btn1 setTitle:@"Button1" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(animationAlpha) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:btn1];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn2.frame = CGRectMake(180, 500, 140, 35);
    [btn2 setTitle:@"Button2" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(animationFrame) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:btn2];
    */
    
    /*
    UIImageView *Image = [[UIImageView alloc] initWithFrame:CGRectMake((375-100)/2.0, 100, 100, 100)];
    Image.image = [UIImage imageNamed:@"01"];
    Image.contentMode = UIViewContentModeScaleAspectFill;
    Image.backgroundColor = [UIColor yellowColor];
    [self.window addSubview:Image];
    */
    
    /*
    for (int i = 0; i < 10; i++) {
        for (int j = 0; j < 10; j++) {
            UIView *view = [[UIView alloc] initWithFrame:CGRectMake((375-200)/2.0 + 20*i, 100 + 20 * j, 20, 20)];
            if ((i + j)%2 == 0) {
                view.backgroundColor = [UIColor blackColor];
            }else {
                view.backgroundColor = [UIColor redColor];
            }
            [self.window addSubview:view];
        }
    }
    */
    
    
    for (int i = 7; i > 0; i --) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake((375 - 40 * i)/2.0, (600 - 40 * i)/ 2.0, 40 * i, 40 * i)];
        switch (i) {
            case 1:
                view.backgroundColor = [UIColor redColor];
                break;
            case 2:
                view.backgroundColor = [UIColor orangeColor];
                break;
            case 3:
                view.backgroundColor = [UIColor yellowColor];
                break;
            case 4:
                view.backgroundColor = [UIColor greenColor];
                break;
            case 5:
                view.backgroundColor = [UIColor blueColor];
                break;
            case 6:
                view.backgroundColor = [UIColor colorWithRed:0 green:0.5 blue:0.5 alpha:1];
                break;
            case 7:
                view.backgroundColor = [UIColor purpleColor];
            break;
        }
        [self.window addSubview:view];
    }
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn1.frame = CGRectMake(60, 500, 140, 35);
    [btn1 setTitle:@"Button1" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(animationAlpha) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:btn1];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn2.frame = CGRectMake(120, 500, 140, 35);
    [btn2 setTitle:@"Button2" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(animationFrame) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:btn2];
    
    UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn3.frame = CGRectMake(180, 500, 140, 35);
    [btn3 setTitle:@"Button3" forState:UIControlStateNormal];
    [btn3 addTarget:self action:@selector(animationFrame) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:btn3];
    
    return YES;
}


/*
- (void)changeView {
    [self.window bringSubviewToFront:view1];
}

- (void)changeColor {
    UIView *view = [self.window viewWithTag:2];
    view.backgroundColor = [UIColor yellowColor];
}

- (void)changeViewScale {
    UIView *view = [self.window viewWithTag:1];
    view.transform = CGAffineTransformScale(view.transform, 0.8, 0.8);
}

- (void)rotateView {
    UIView *view = [self.window viewWithTag:1];
    view.transform = CGAffineTransformRotate(view.transform, 0.8);
}
*/

- (void)animationAlpha {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1];
    [UIView setAnimationDelay:2];
    view2.alpha = 0.0;


    view2.alpha = 1.0;
    [UIView commitAnimations];
}

- (void)animationFrame {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:5];
    [UIView setAnimationDelay:2];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    view2.center = CGPointMake(0, 0);
    [UIView commitAnimations];
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
