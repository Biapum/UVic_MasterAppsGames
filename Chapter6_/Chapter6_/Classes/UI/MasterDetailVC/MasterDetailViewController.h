//
//  MasterDetailViewController.h
//  Chapter6_
//
//  Created by Valenti on 15/03/14.
//  Copyright (c) 2014 Biapum. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MasterEntity;
@interface MasterDetailViewController : UIViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil master:(MasterEntity*)master_;

@end
