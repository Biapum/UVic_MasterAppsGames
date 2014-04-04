//
//  MountainService.m
//  Chapter9_
//
//  Created by Valenti on 04/04/14.
//  Copyright (c) 2014 Biapum. All rights reserved.
//

#import "MountainService.h"

#import "MountainEntity.h"
#import "MountainViewController.h"

//Parse
#import <Parse/Parse.h>

@implementation MountainService

+ (MountainService *) instance
{
    static MountainService *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[MountainService alloc] init];
    });
    
    return instance;
}

- (void) addMountainServiceWithName:(NSString*) name
                              heigh:(NSString*) heigh
{
    MountainEntity *m = [[MountainEntity alloc] init];
    m.mountainName = name;
    m.mountainHeigh = heigh;
    
    PFObject *objectMountain = [PFObject objectWithClassName:@"Mountains"];
    objectMountain[@"mountainName"] = m.mountainName;
    objectMountain[@"mountainHeigh"] = m.mountainHeigh;

    [objectMountain saveInBackground];
}

- (void) giveMeTheMountains:(id)delegate
{
    PFQuery *query = [PFQuery queryWithClassName:@"Mountains"];
    
    [query orderByAscending:@"mountainName"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        
        NSMutableArray *arrayToReturn = [[NSMutableArray alloc] init];
        
        for (PFObject *p in objects) {
            MountainEntity *m = [[MountainEntity alloc] initWithPFObject:p];
            [arrayToReturn addObject:m];
        }
           [delegate receiveMountains:arrayToReturn];
    }];

}



@end
