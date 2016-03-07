//
//  MSMPersonInfoVC.m
//  CPJSidebarViewController
//
//  Created by shuaizhai on 3/4/16.
//  Copyright © 2016 shuaizhai. All rights reserved.
//

#import "MSMPersonInfoVC.h"

#import "MSMActivityVC.h"
#import "MSMFeedVCViewController.h"

@interface MSMPersonInfoVC ()

@end

@implementation MSMPersonInfoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.userAvatarImg.layer.masksToBounds = YES;
    self.userAvatarImg.layer.cornerRadius = self.userAvatarImg.frame.size.width/2;
    self.userAvatarImg.contentMode = UIViewContentModeScaleAspectFill;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)messageAction:(id)sender {
    
    
    
    UIViewController *vc = [MSMFeedVCViewController new];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    
    nav.view.layer.shadowColor = [UIColor grayColor].CGColor;
    nav.view.layer.shadowRadius = 10;
    nav.view.layer.shadowOpacity = 0.9;
    
    [self.mainVC changeMainViewController:nav];
}

- (IBAction)activityAction:(id)sender {
    
    UIViewController *vc = [MSMActivityVC new];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    nav.view.layer.shadowColor = [UIColor grayColor].CGColor;
    nav.view.layer.shadowRadius = 10;
    nav.view.layer.shadowOpacity = 0.9;
    [self.mainVC changeMainViewController:nav];
    
}

@end
