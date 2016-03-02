//
//  AppDelegate.m
//  CPJSidebarViewController
//
//  Created by shuaizhai on 3/2/16.
//  Copyright © 2016 shuaizhai. All rights reserved.
//

#import "AppDelegate.h"
#import "CPJSidebarViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // 1. 创建window
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // 2. 创建控制器
    UIViewController *leftVC = [UIViewController new];
    UIViewController *mainVC = [UIViewController new];
    UIViewController *rightVC = [UIViewController new];
    
    
//    [self.navigationController pushViewController:sidebarVC animated:YES];
    
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:mainVC];
    
    CPJSidebarViewController *sidebarVC = [[CPJSidebarViewController alloc] initWithLeftVC:leftVC withMainVC:nav withRightVC:rightVC];
    
    // 3. 创建跟控制器
//    LeftViewController *controller = [[LeftViewController alloc] initWithLeftView:left andMainView:nav andRightView:right];
    
    
    // 4. 设置跟控制器
    self.window.rootViewController = sidebarVC;
    // 5. 显示 window
    [self.window makeKeyAndVisible];
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
