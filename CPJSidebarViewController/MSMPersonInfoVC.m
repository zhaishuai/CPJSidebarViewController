//
//  MSMPersonInfoVC.m
//  CPJSidebarViewController
//
//  Created by shuaizhai on 3/4/16.
//  Copyright © 2016 shuaizhai. All rights reserved.
//

#import "MSMPersonInfoVC.h"

#import "MSMActivityVC.h"

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
    
    UIViewController *vc = [MSMActivityVC new];
//    vc.view.backgroundColor = [UIColor redColor];
    
//    self.mainVC.mainVC = vc;
    
    vc.view.layer.shadowColor = [UIColor grayColor].CGColor;
    vc.view.layer.shadowRadius = 10;
    vc.view.layer.shadowOpacity = 0.9;
    [self.mainVC changeMainViewController:vc];
    
    
}


@end
