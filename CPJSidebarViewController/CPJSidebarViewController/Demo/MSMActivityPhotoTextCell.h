//
//  MSMActivityPhotoTextCell.h
//  CPJSidebarViewController
//
//  Created by shuaizhai on 3/7/16.
//  Copyright © 2016 shuaizhai. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MSMBaseAvtivityCell.h"

#define MSMACTIVITY_PHOTOT_TEXT_CELLID @"com.MSMActivityPhotoTextCell.id"

@interface MSMActivityPhotoTextCell : MSMBaseAvtivityCell

@property (nonatomic, strong)CPJImageButton *contentImageView;
@property (nonatomic, strong)UILabel        *contentLabel;

@end
