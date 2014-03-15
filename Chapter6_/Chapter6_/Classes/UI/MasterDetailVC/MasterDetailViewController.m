//
//  MasterDetailViewController.m
//  Chapter6_
//
//  Created by Valenti on 15/03/14.
//  Copyright (c) 2014 Biapum. All rights reserved.
//

#import "MasterDetailViewController.h"

//ENTITIES
#import "MasterEntity.h"

@interface MasterDetailViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic,strong) IBOutlet UITableView   *tableViewTeachers;
@property (nonatomic,strong) MasterEntity           *master;
@end

@implementation MasterDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil master:(MasterEntity*)master_
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.master = master_;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = self.master.name;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - TableView DataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.master.teachers count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cellMaster = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    
    NSString *teacherName = [self.master.teachers objectAtIndex:indexPath.row];
    
    
    [cellMaster.textLabel setText:teacherName];
    
    return cellMaster;
}

@end
