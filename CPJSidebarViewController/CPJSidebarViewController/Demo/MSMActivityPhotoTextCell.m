//
//  MSMActivityPhotoTextCell.m
//  CPJSidebarViewController
//
//  Created by shuaizhai on 3/7/16.
//  Copyright © 2016 shuaizhai. All rights reserved.
//

#import "MSMActivityPhotoTextCell.h"

@implementation MSMActivityPhotoTextCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        self.contentImageView            = [[CPJImageButton alloc] init];
        self.contentImageView.width      = 70;
        self.contentImageView.height     = 70;
        self.contentImageView.top        = self.avatarView.bottom + 15;
        self.contentImageView.right      = [UIScreen mainScreen].bounds.size.width - 15;
        [self addSubview:self.contentImageView];
        
        self.contentLabel                = [UILabel new];
        self.contentLabel.textColor      = [UIColor lightGrayColor];
        self.contentLabel.font           = [UIFont systemFontOfSize:14 weight:0.2];
        self.contentLabel.top            = self.contentImageView.top;
        self.contentLabel.left           = 15;
        self.contentLabel.width          = [UIScreen mainScreen].bounds.size.width - 15 - 10 - self.contentImageView.width - 15;
        self.contentLabel.numberOfLines  = 0;
        [self addSubview:self.contentLabel];
    }
    return self;
}

- (void)configCellWithDataModel:(id)model withUserDictionary:(NSDictionary *)userInfo{
    [super configCellWithDataModel:model withUserDictionary:userInfo];
    MSMActivityModel *activeInfo         = model;
    self.contentImageView.image          = [UIImage imageNamed:[activeInfo.picArray firstObject]];
    self.contentLabel.text               = activeInfo.content;
    self.contentLabel.height             = [self heightForLabel:self.contentLabel];
    
    self.cellHeight = self.contentLabel.bottom > self.contentImageView.bottom ? self.contentLabel.bottom + 15 : self.contentImageView.bottom + 15;
}


@end
