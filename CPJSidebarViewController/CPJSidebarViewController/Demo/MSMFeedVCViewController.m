//
//  MSMFeedVCViewController.m
//  CPJSidebarViewController
//
//  Created by shuaizhai on 3/4/16.
//  Copyright © 2016 shuaizhai. All rights reserved.
//

#import "MSMFeedVCViewController.h"
#import "MSMFeedCellRegular.h"

@interface MSMFeedVCViewController ()

@property (nonatomic, strong)CPJAbstractSection     *feedSection;
@property (nonatomic, strong)CPJDataSource          *feedInfoDatasource;

@end

@implementation MSMFeedVCViewController

- (void)initializeAdapterAndSetDatasource{
    [super initializeAdapterAndSetDatasource];
    
    self.feedInfoDatasource = [[CPJDataSource alloc] initWithArray:@[@"1",@"2",@"3",@"4"]];
    self.feedSection = [[CPJAbstractSection alloc] initWithCellNibName:@"MSMFeedCellRegular" withDataSource:self.feedInfoDatasource withCellID:MSMFEED_CELLID];
    [self.tableViewComponent addSection:self.feedSection];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)setCellDictionary:(NSMutableDictionary *)userInfo{

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
