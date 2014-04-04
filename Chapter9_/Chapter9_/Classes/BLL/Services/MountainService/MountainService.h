//
//  MountainService.h
//  Chapter9_
//
//  Created by Valenti on 04/04/14.
//  Copyright (c) 2014 Biapum. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MountainService : NSObject

+ (MountainService *) instance;

- (void) addMountainServiceWithName:(NSString*)name
                              heigh:(NSString*) heigh;

- (void) giveMeTheMountains:(id)delegate;






@end
