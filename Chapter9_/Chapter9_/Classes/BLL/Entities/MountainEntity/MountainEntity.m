//
//  MountainEntity.m
//  Chapter9_
//
//  Created by Valenti on 04/04/14.
//  Copyright (c) 2014 Biapum. All rights reserved.
//

#import "MountainEntity.h"

@implementation MountainEntity
@synthesize mountainHeigh, mountainName;


- (id) initWithPFObject:(PFObject*)pfobject
{
    if((self = [super init]))
    {
        self.mountainName = [pfobject objectForKey:@"mountainName"];
        self.mountainHeigh = [pfobject objectForKey:@"mountainHeigh"];
    }

    return self;
}



@end
