//
//  MyFirstViewController.m
//  Chapter4_
//
//  Created by Valenti on 28/02/14.
//  Copyright (c) 2014 Biapum. All rights reserved.
//

#import "MyFirstViewController.h"

@interface MyFirstViewController ()
@property (nonatomic, strong) IBOutlet UILabel *labelIOSAndroid;
@property (nonatomic, strong) IBOutlet UILabel *label2;

@property (nonatomic, strong) UILabel *label3;

@property (nonatomic, strong) IBOutlet UIButton *buttonFollow;
@property (nonatomic, strong) IBOutlet UISwitch *switchLight;
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
    
    [self.labelIOSAndroid setText:@"Josep Guardiola"];
    
    [self.label2 setText:@"102 anys"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions
- (IBAction)buttonFollowClicked:(id)sender
{
    NSLog(@"clicked");
    
    //You can use "sender" insted of self.buttonFollow
    if ([[[sender titleLabel] text] isEqualToString:@"Follow"])
    {
        [self.buttonFollow setTitle:@"Following" forState:UIControlStateNormal];
    }
    else
    {
        [self.buttonFollow setTitle:@"Follow" forState:UIControlStateNormal];
    }
}

- (IBAction)switchLightChange:(id)sender
{
    NSLog(@"El switch ha canviat de valor");
    
    if (self.switchLight.isOn)
    {
        [self.view setBackgroundColor:[UIColor yellowColor]];
    }
    else
    {
        [self.view setBackgroundColor:[UIColor blackColor]];
    }
}


@end
