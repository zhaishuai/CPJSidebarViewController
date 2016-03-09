//
//  MSMActivityPlainTextCell.h
//  CPJSidebarViewController
//
//  Created by shuaizhai on 3/7/16.
//  Copyright © 2016 shuaizhai. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MSMBaseAvtivityCell.h"

#define MSMACTIVITY_PLAIN_TEXT_CELLID @"com.MSMActivityPlainTextCell.id"

@interface MSMActivityPlainTextCell : MSMBaseAvtivityCell

@property (nonatomic) UILabel *contentTextLabel;

@property (nonatomic, assign)double temp;
@end
