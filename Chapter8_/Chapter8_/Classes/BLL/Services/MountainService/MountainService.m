//
//  MountainService.m
//  Chapter8_
//
//  Created by Valenti on 28/03/14.
//  Copyright (c) 2014 Biapum. All rights reserved.
//

#import "MountainService.h"

@implementation MountainService
@synthesize arrayMountainsService;

+ (MountainService *)instance
{
    static MountainService *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        //Only once is executed
        instance = [[MountainService alloc] init];
        instance.arrayMountainsService = [[NSMutableArray alloc] init];
    });
    return instance;
}







@end
