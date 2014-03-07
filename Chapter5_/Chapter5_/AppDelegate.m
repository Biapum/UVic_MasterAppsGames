//
//  AppDelegate.m
//  Chapter5_
//
//  Created by Valenti on 07/03/14.
//  Copyright (c) 2014 Biapum. All rights reserved.
//

#import "AppDelegate.h"

//VC
#import "MyFirstViewController.h"
#import "MySecondViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    //init tabbarcontroller
    UITabBarController *myBestTabBarController = [[UITabBarController alloc] init];
    
    //init Array of rootviewcontrollers
    NSMutableArray  *arrayVC = [[NSMutableArray alloc] init];
    
    //first root view controller
    MyFirstViewController *vc1 = [[MyFirstViewController alloc] init];
    
    UITabBarItem *tab1 = [[UITabBarItem alloc] initWithTitle:@"Yellow" image:[UIImage imageNamed:@"img1.png"] tag:1];
    
    [vc1 setTabBarItem:tab1];
    
    UINavigationController *nc1 = [[UINavigationController alloc] initWithRootViewController:vc1];
    [arrayVC addObject:nc1];

    //second root view controller
    MySecondViewController *vc2 = [[MySecondViewController alloc] init];
    UITabBarItem *tab2 = [[UITabBarItem alloc] initWithTitle:@"Blue" image:[UIImage imageNamed:@"img2.png"] tag:2];
    [vc2 setTabBarItem:tab2];
    
    UINavigationController *nc2 = [[UINavigationController alloc] initWithRootViewController:vc2];
    [arrayVC addObject:nc2];

    
    [myBestTabBarController setViewControllers:arrayVC];
    
    [self.window setRootViewController:myBestTabBarController];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
