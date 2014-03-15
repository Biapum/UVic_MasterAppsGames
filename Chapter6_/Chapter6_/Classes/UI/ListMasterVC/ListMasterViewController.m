//
//  ListMasterViewController.m
//  Chapter6_
//
//  Created by Valenti on 14/03/14.
//  Copyright (c) 2014 Biapum. All rights reserved.
//

#import "ListMasterViewController.h"

//ENTITIES
#import "MasterEntity.h"

//VC
#import "MasterDetailViewController.h"

@interface ListMasterViewController () <UITableViewDataSource,UITableViewDelegate >
@property (nonatomic, strong) IBOutlet UITableView *tableViewMasters;
@property (nonatomic, strong) NSMutableArray    *arrayMasters;
@end

@implementation ListMasterViewController

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
    
    MasterEntity *master1 = [[MasterEntity alloc] init];
    [master1 setName:@"Master Apps & Games"];
    [master1 setPlace:@"UVic"];
    NSMutableArray  *array1 = [[NSMutableArray alloc] initWithObjects:@"Valentí", @"Toni", nil];
    [master1 setTeachers:array1];
    
    MasterEntity *master2 = [[MasterEntity alloc] init];
    [master2 setName:@"Master Unity"];
    [master2 setPlace:@"Universitat Taradell"];
    NSMutableArray  *array2 = [[NSMutableArray alloc] initWithObjects:@"Marc", @"Maria", nil];
    [master2 setTeachers:array2];
    

    
    self.arrayMasters = [[NSMutableArray alloc] initWithObjects:master1,master2,nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TableView DataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.arrayMasters count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cellMaster = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    
    MasterEntity *master = [self.arrayMasters objectAtIndex:indexPath.row];
    
    
    [cellMaster.textLabel setText:master.name];
    [cellMaster.detailTextLabel setText:master.place];
    [cellMaster.imageView setImage:[UIImage imageNamed:@"tw_uvic.png"]];
    
    [cellMaster setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    
//    switch (indexPath.row) {
//        case 0:
//            [cellMaster.textLabel setText:@"Master 1"];
//            break;
//        case 1:
//            [cellMaster.textLabel setText:@"Master 2"];
//            break;
//        default:
//            break;
//    }
    
    return cellMaster;
}


#pragma mark - TableView Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"row selected %i", indexPath.row);
    MasterEntity *master = [self.arrayMasters objectAtIndex:indexPath.row];

    MasterDetailViewController *vc = [[MasterDetailViewController alloc] initWithNibName:@"MasterDetailViewController" bundle:nil master:master];
    [self.navigationController pushViewController:vc animated:YES];
}


@end
