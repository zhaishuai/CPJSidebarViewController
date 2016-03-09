//
//  MSMPersonInfoVC.h
//  CPJSidebarViewController
//
//  Created by shuaizhai on 3/4/16.
//  Copyright © 2016 shuaizhai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CPJSidebarViewController.h"

@interface MSMPersonInfoVC : UIViewController
@property (weak, nonatomic) IBOutlet CPJImageButton *userAvatarImg;

@property (nonatomic, weak) CPJSidebarViewController *mainVC;

@end
