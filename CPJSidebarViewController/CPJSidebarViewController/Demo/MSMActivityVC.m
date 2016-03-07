//
//  MSMActivityVC.m
//  CPJSidebarViewController
//
//  Created by shuaizhai on 3/7/16.
//  Copyright © 2016 shuaizhai. All rights reserved.
//

#import "MSMActivityVC.h"
#import "MSMActivitySection.h"

@interface MSMActivityVC ()

@property (nonatomic) CPJAbstractSection *activtySection;
@property (nonatomic) CPJDataSource      *dataSource;

@end

@implementation MSMActivityVC

- (void)initializeAdapterAndSetDatasource{
    [super initializeAdapterAndSetDatasource];
    self.dataSource = [[CPJDataSource alloc] initWithArray:[[MSMModelGenerator new] activitydata]];
    
    
    self.activtySection = [[MSMActivitySection alloc] initWithCellClass:[MSMActivityPhotoTextCell class] withDataSource:self.dataSource withCellID:MSMACTIVITY_PHOTOT_TEXT_CELLID];
    [self.activtySection.cellDict addObject:[MSMActivityPlainTextCell class] pairedWithKey:MSMACTIVITY_PLAIN_TEXT_CELLID];
    [self.activtySection.cellDict addObject:[MSMActivityPurepicCell class] pairedWithKey:MSMACTIVITY_PUREPIC_CELLID];


    
    [self.tableViewComponent addSection:self.activtySection];
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.tableViewComponent.view.separatorStyle = UITableViewCellSeparatorStyleNone;
}

- (void)setCellDictionary:(NSMutableDictionary *)userInfo{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
