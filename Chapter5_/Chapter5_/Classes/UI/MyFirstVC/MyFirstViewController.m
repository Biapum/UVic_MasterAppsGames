//
//  MyFirstViewController.m
//  Chapter5_
//
//  Created by Valenti on 07/03/14.
//  Copyright (c) 2014 Biapum. All rights reserved.
//

#import "MyFirstViewController.h"

//VC
#import "OrangeViewController.h"

@interface MyFirstViewController ()<UIAlertViewDelegate>

@end

@implementation MyFirstViewController

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

- (IBAction)orangeBUttonClicked:(id)sender
{
    NSLog(@"Orange clicked");
    OrangeViewController *orangeVC = [[OrangeViewController alloc] initWithNibName:@"OrangeViewController" bundle:nil title:@"I'm the best"];
    
    [self.navigationController pushViewController:orangeVC animated:YES];
}

- (IBAction)showAlertCLicked:(id)sender
{
    NSLog(@"Alert Clicked");
    
    UIAlertView *alert1 = [[UIAlertView alloc] initWithTitle:@"Question" message:@"Do you like coke?" delegate:self cancelButtonTitle:@"No" otherButtonTitles:@"Yes", nil];

    [alert1 show];
    
}

//Delegate method
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"delegate method called");
    if (buttonIndex == 0)
    {
        NSLog(@"Nooooo");
    }
    else if (buttonIndex == 1)
    {
       NSLog(@"Yessss");
    }
}











@end
