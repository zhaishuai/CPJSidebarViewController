//
//  MSMBaseAvtivityCell.h
//  CPJSidebarViewController
//
//  Created by shuaizhai on 3/7/16.
//  Copyright © 2016 shuaizhai. All rights reserved.
//

#import <UIKit/UIKit.h>

#define MSMBaseAvtivityCellID @"com.MSMBaseAvtivityCell.id"

@interface MSMBaseAvtivityCell : CPJTableViewCell

@property (strong, nonatomic) CPJImageButton *avatarView;
@property (strong, nonatomic) UILabel *nameLabel;
@property (strong, nonatomic) UILabel *stateLabel;
@property (strong, nonatomic) UILabel *timeLabel;

@end
