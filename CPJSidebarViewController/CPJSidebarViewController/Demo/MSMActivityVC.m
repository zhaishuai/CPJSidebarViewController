//
//  MSMActivityVC.m
//  CPJSidebarViewController
//
//  Created by shuaizhai on 3/7/16.
//  Copyright © 2016 shuaizhai. All rights reserved.
//

#import "MSMActivityVC.h"
#import "MSMActivitySection.h"
#import "MJRefresh.h"

@interface MSMActivityVC ()

@property (nonatomic) CPJAbstractSection *activtySection;
@property (nonatomic) CPJDataSource      *dataSource;

@end

@implementation MSMActivityVC

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)initializeAdapterAndSetDatasource{
    [super initializeAdapterAndSetDatasource];
    self.dataSource     = [[CPJDataSource alloc] initWithArray:[[MSMModelGenerator new] activitydata]];
    self.activtySection = [[MSMActivitySection alloc] initWithCellClass:[MSMActivityPhotoTextCell class] withDataSource:self.dataSource withCellID:MSMACTIVITY_PHOTOT_TEXT_CELLID];
    [self.activtySection addCellWithCellClass:[MSMActivityPlainTextCell class] withCellID:MSMACTIVITY_PLAIN_TEXT_CELLID];
    [self.activtySection addCellWithCellClass:[MSMActivityPurepicCell class] withCellID:MSMACTIVITY_PUREPIC_CELLID];
    [self.tableViewComponent addSection:self.activtySection];
    
    [self.tableViewComponent addRefreshHeaderComponentWithTarget:self withRefreshAction:@selector(loadNewDataRefresh)];
    [self.tableViewComponent addRefreshFooterComponentWithTarget:self withRefreshAction:@selector(loadOldDataRefresh)];
    self.networkStateHander = [CPJBaseNetworkStateComponent new];

}

- (void)loadNewDataRefresh{
    [self.loadingComponent showLoadingViewToVC:self withTitle:@"加载中"];
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        sleep(2);
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.loadingComponent hideLoadingViewFromVC:self];
            [self.loadingComponent showGlanceViewToVC:self withTitle:@"刷新完毕" withTime:1 withCallBack:nil];
            [self.dataSource.dataList addObjectsFromArray:[[MSMModelGenerator new] activitydata]];
            [self.tableViewComponent reloadData];
            [self.tableViewComponent.view.header endRefreshing];
        });
    });
    
}

- (void)loadOldDataRefresh{
    [self.tableViewComponent.view.footer endRefreshing];
    [self.dataSource.dataList addObjectsFromArray:[[MSMModelGenerator new] activitydata]];
    [self.tableViewComponent reloadData];
}

- (void)setCellDictionary:(NSMutableDictionary *)userInfo{
    [super setCellDictionary:userInfo];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}



@end
