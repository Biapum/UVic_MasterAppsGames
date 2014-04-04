//
//  MainViewController.m
//  Chapter8_
//
//  Created by Valenti on 28/03/14.
//  Copyright (c) 2014 Biapum. All rights reserved.
//

#import "MainViewController.h"
#import "SecondViewController.h"

//SERVICES
#import "MountainService.h"

@interface MainViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (nonatomic, strong) IBOutlet UIImageView *myImageView;

@end

@implementation MainViewController

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
    // Do any additional setup after loading the view.
    [[[MountainService instance] arrayMountainsService] addObject:@"Pedraforca"];
    [[[MountainService instance] arrayMountainsService] addObject:@"Montserrat"];
    [[[MountainService instance] arrayMountainsService] addObject:@"Puigmal"];
    [[[MountainService instance] arrayMountainsService] addObject:@"Taga"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) choosePhoto:(id)sender
{
    NSLog(@"choosePhoto");
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    [picker setDelegate:self];
    [picker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    
    [self presentViewController:picker animated:YES completion:nil];
}

- (IBAction) takePhoto:(id)sender
{
    NSLog(@"takePhoto");
}

#pragma mark - Delegate

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *chosenImage = info[UIImagePickerControllerOriginalImage];

    [self.myImageView setImage:chosenImage];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction) openModelVC:(id)sender
{
    SecondViewController *vc = [[SecondViewController alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}


@end
