//
//  MSMFaceClipperVC.h
//  SweetBeauty
//
//  Created by shuaizhai on 12/13/15.
//  Copyright © 2015 YZX. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <IOSGeneralPurposeFramework/IOSGeneralPurposeFramework.h>

// 获取屏幕长高
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

@interface MSMFaceClipperVC : UIViewController

@property (nonatomic, strong)CPJImageClipping *imageClipping;
@property (weak, nonatomic) IBOutlet UIButton *cliperButton;
@property (weak, nonatomic)CPJImageButton *image;


@end
