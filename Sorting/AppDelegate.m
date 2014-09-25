//
//  AppDelegate.m
//  Sorting
//
//  Created by Durgesh Lal on 6/29/14.
//  Copyright (c) 2014 Durgesh Lal. All rights reserved.
//

#import "AppDelegate.h"
#import "Sortings.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    Sortings *sortingObject = [[Sortings alloc] init];
//    NSMutableArray *sortedArray = [sortingObject bubbleSortApproach:[NSMutableArray arrayWithObjects:@"5",@"9",@"1",@"3",@"10",@"22",@"21",@"21",@"99", nil]];
//    NSMutableArray *sortedArray = [sortingObject insertionSortApproach:[NSMutableArray arrayWithObjects:@"5",@"9",@"1",@"3",@"10",@"22",@"21",@"21",@"99", nil]];
    
    
//    NSMutableArray *sortedArray = [sortingObject mergeSortApporach:[NSArray arrayWithObjects:@"5",@"9",@"1",@"3",@"10",@"22",@"21",@"21",@"99", nil]];
    
    [sortingObject factorial:2];
//    NSLog(@"Printing the sorted array %@", sortedArray);
//    NSLog(@"Printing the sorted array %@", [sortingObject fibonnaciSeriesForFirst:1 andSecond:3 upto:200]);
    
    
    NSArray* data = @[@"Grapes", @"Apples", @"Oranges"];
    NSSortDescriptor *sd = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    data = [data sortedArrayUsingDescriptors:@[sd]];
    
    NSArray *sortedArray = [[NSArray alloc] initWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10", nil];
    Sortings *sort = [[Sortings alloc]init];
    NSInteger temp = [sort binarySearchInArray:sortedArray withKey:@"8" havingMin:1 havingMax:[sortedArray count]];
    
    
//    NSSortDescriptor *sd1 = [[NSSortDescriptor alloc] initWithKey:@"lastName" ascending:YES];
//    data = [data sortedArrayUsingDescriptors:@[sd1]];
    
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
