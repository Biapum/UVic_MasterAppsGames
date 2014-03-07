//
//  OrangeViewController.m
//  Chapter5_
//
//  Created by Valenti on 07/03/14.
//  Copyright (c) 2014 Biapum. All rights reserved.
//

#import "OrangeViewController.h"

@interface OrangeViewController ()
@property (nonatomic, strong) NSString *myTitle;
@end

@implementation OrangeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil title:(NSString*)title_
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.myTitle = title_;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = self.myTitle;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
