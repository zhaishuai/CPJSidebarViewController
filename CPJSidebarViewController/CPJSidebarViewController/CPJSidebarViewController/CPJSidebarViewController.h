//
//  CPJSidebarViewController.h
//  CPJSidebarViewController
//
//  Created by shuaizhai on 3/2/16.
//  Copyright © 2016 shuaizhai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CPJSidebarViewController : UIViewController

@property (nonatomic)UIViewController* leftVC;                          //左侧面板控制器
@property (nonatomic)UIViewController* mainVC;                          //主面板控制器
@property (nonatomic)UIViewController* rightVC;                         //右侧面板控制器
@property (nonatomic, assign)CGFloat   speedRatio;                      //滑动速度系数，默认1.0
@property (nonatomic, assign)CGFloat   leftDistance;                    //左窗口打开的距离


- (instancetype)initWithLeftVC:(UIViewController *)leftVC withMainVC:(UIViewController *)mainVC;

- (instancetype)initWithLeftVC:(UIViewController *)leftVC withMainVC:(UIViewController *)mainVC withRightVC:(UIViewController *)rightVC;

@end
