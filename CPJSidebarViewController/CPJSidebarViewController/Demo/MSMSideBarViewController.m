//
//  MSMSideBarViewController.m
//  CPJSidebarViewController
//
//  Created by shuaizhai on 3/4/16.
//  Copyright © 2016 shuaizhai. All rights reserved.
//

#import "MSMSideBarViewController.h"

@implementation MSMSideBarViewController

- (instancetype)initWithLeftVC:(UIViewController *)leftVC withMainVC:(UIViewController *)mainVC{
    if(self = [super initWithLeftVC:leftVC withMainVC:mainVC]){
        self.mainVC.view.layer.shadowColor = [UIColor grayColor].CGColor;
        self.mainVC.view.layer.shadowRadius = 10;
        self.mainVC.view.layer.shadowOpacity = 0.9;
    }
    return self;
}

- (instancetype)initWithLeftVC:(UIViewController *)leftVC withMainVC:(UIViewController *)mainVC withRightVC:(UIViewController *)rightVC{
    if(self = [super initWithLeftVC:leftVC withMainVC:mainVC withRightVC:rightVC]){
        self.mainVC.view.layer.shadowColor = [UIColor grayColor].CGColor;
        self.mainVC.view.layer.shadowRadius = 10;
        self.mainVC.view.layer.shadowOpacity = 0.9;
    }
    return self;
}

@end
