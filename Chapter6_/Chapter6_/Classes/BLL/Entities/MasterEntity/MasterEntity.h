//
//  MasterEntity.h
//  Chapter6_
//
//  Created by Valenti on 14/03/14.
//  Copyright (c) 2014 Biapum. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MasterEntity : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *place;
@property (nonatomic, strong) NSMutableArray *teachers;

@end
