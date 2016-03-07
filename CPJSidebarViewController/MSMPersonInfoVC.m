//
//  MSMPersonInfoVC.m
//  CPJSidebarViewController
//
//  Created by shuaizhai on 3/4/16.
//  Copyright © 2016 shuaizhai. All rights reserved.
//

#import "MSMPersonInfoVC.h"

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
