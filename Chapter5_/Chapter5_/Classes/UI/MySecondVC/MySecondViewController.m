//
//  MySecondViewController.m
//  Chapter5_
//
//  Created by Valenti on 07/03/14.
//  Copyright (c) 2014 Biapum. All rights reserved.
//

#import "MySecondViewController.h"

//VC
#import "GreenViewController.h"

@interface MySecondViewController ()

@end

@implementation MySecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)greenButtonClicked:(id)sender
{
    NSLog(@"Green Clicked");

    GreenViewController *greenVC = [[GreenViewController alloc] init];
    
    //Show the modal view
    [self presentViewController:greenVC animated:YES completion:nil];
}





@end
