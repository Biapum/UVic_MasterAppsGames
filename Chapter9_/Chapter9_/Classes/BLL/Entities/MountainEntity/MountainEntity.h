//
//  MountainEntity.h
//  Chapter9_
//
//  Created by Valenti on 04/04/14.
//  Copyright (c) 2014 Biapum. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <Parse/Parse.h>

@interface MountainEntity : NSObject
@property (nonatomic, strong) NSString *mountainName;
@property (nonatomic, strong) NSString *mountainHeigh;


- (id) initWithPFObject:(PFObject*)pfobject;







@end
