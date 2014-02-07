//
//  AppDelegate.m
//  Chapter1_
//
//  Created by ios on 07/02/14.
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()
@property (nonatomic, strong) NSString *myFavoriteCity;
@end

@implementation AppDelegate

@synthesize window = _window;

//Custom method to print the logs
- (void) printMyLogsPlease
{
    //Log without parameters
    NSLog(@"The application just launched");
    
    //Log with parameters
    NSLog(@"The application launched and his name is %@ and this is %@",@"chapter1!",@"UVic");
    
    //Log with today date
    NSLog(@"La data d'avui és: %@", [NSDate date]);
}

//Custom method to print a log with parameter
- (void) printMyLogsWithChapter:(int)chapterNumber
{
    // %i print integer
    NSLog(@"The chapter number by paramter is: %i",chapterNumber);
}

//Custom method retunr my name
- (NSString *) whatIsYourName
{
    return @"Valentí";
}

//Method that print the proerty
- (void) printMyFavoriteCity
{
    NSLog(@"My favorite city is %@", self.myFavoriteCity);
}

- (void) printTheArray:(NSMutableArray*)array
{
    NSLog(@"The array of cities is %@", array);
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    /*****************
     CHAPTER 1
     ****************/
    
    //Call methods
    [self printMyLogsPlease];
    [self printMyLogsWithChapter:1];
    
    //Use function with return
    NSString *name = [self whatIsYourName];
    NSLog(@"My name returned for the method is: %@", name);
    
    //Use the property
    self.myFavoriteCity = @"Vic";
    [self printMyFavoriteCity];
    
    //Use Array
    // init => inicialize
    // all => create on memory.
    NSMutableArray *arrayCities = [[NSMutableArray alloc] init];
    
    //Add objects to array.
    [arrayCities addObject:@"Vic"];
    [arrayCities addObject:@"Barcelona"];
    [arrayCities addObject:@"San Francisco"];
    
    //method to print the array
    [self printTheArray:arrayCities];
    return YES;
}



- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
