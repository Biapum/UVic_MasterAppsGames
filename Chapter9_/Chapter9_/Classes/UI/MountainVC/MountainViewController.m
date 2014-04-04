//
//  MountainViewController.m
//  Chapter9_
//
//  Created by Valenti on 04/04/14.
//  Copyright (c) 2014 Biapum. All rights reserved.
//

#import "MountainViewController.h"
#import "MountainEntity.h"
#import "MountainService.h"

@interface MountainViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) IBOutlet UITextField *textfieldName;
@property (nonatomic, strong) IBOutlet UITextField *textfieldHeigh;
@property (nonatomic, strong) IBOutlet UITableView *tableViewMountains;

@property (nonatomic, strong) NSMutableArray *arrayMountains;

@property (nonatomic, strong) IBOutlet  UILabel *labelFirstMountain;

@end

@implementation MountainViewController

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
    self.arrayMountains = [[NSMutableArray alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - action
- (IBAction)addMountain:(id)sender
{
    NSString *name = self.textfieldName.text;
    NSString *heigh = self.textfieldHeigh.text;
    
    [[MountainService instance] addMountainServiceWithName:name heigh:heigh];
    
    self.textfieldName.text = @"";
    self.textfieldHeigh.text = @"";
}

- (IBAction)showMountains:(id)sender
{
    [[MountainService instance] giveMeTheMountains:self];
}

- (void) receiveMountains:(NSMutableArray*)array
{
    self.arrayMountains = array;
    
    [self.tableViewMountains reloadData];
    [self.view endEditing:YES];
    
    NSLog(@"Mountains: %@",self.arrayMountains);
    
    if ([self.arrayMountains count]>0)
    {
        MountainEntity *m = [self.arrayMountains objectAtIndex:0];
        
        [self.labelFirstMountain setText:m.mountainName];
    }
}


#pragma mark - tableview

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.arrayMountains count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@""];
    MountainEntity *m = [self.arrayMountains objectAtIndex:indexPath.row];
    [cell.textLabel setText:m.mountainName];
    [cell.detailTextLabel setText:m.mountainHeigh];
    return cell;
}





@end
