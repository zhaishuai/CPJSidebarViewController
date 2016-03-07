//
//  MSMBaseAvtivityCell.m
//  CPJSidebarViewController
//
//  Created by shuaizhai on 3/7/16.
//  Copyright © 2016 shuaizhai. All rights reserved.
//

#import "MSMBaseAvtivityCell.h"

@implementation MSMBaseAvtivityCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        self.avatarView              = [[CPJImageButton alloc] initWithImage:[UIImage imageNamed:@"avatar"]];
        self.avatarView.width        = 45;
        self.avatarView.height       = 45;
        self.avatarView.top          = 15;
        self.avatarView.left         = 15;
        [self.avatarView setCornerRadius:self.avatarView.width/2];
        [self addSubview:self.avatarView];
        
        self.timeLabel               = [UILabel new];
        self.timeLabel.textColor     = [UIColor lightGrayColor];
        self.timeLabel.font          = [UIFont systemFontOfSize:13 weight:0.1];
        self.timeLabel.textAlignment = NSTextAlignmentRight;
        self.timeLabel.width         = 80;
        self.timeLabel.height        = 25;
        self.timeLabel.top           = self.avatarView.centerY - self.timeLabel.height + 5;
        self.timeLabel.right         = [UIScreen mainScreen].bounds.size.width - 15;
        self.timeLabel.text          = @"3 MIN AGO";
        [self addSubview:self.timeLabel];
        
        self.nameLabel               = [[UILabel alloc] init];
        self.nameLabel.textColor     = [UIColor blackColor];
        self.nameLabel.font          = [UIFont systemFontOfSize:14 weight:0.3];
        self.nameLabel.left          = self.avatarView.right + 10;
        self.nameLabel.width         = [UIScreen mainScreen].bounds.size.width - 10 - self.timeLabel.width - 15;
        self.nameLabel.height        = 20;
        self.nameLabel.top           = self.avatarView.centerY - self.nameLabel.height;
        self.nameLabel.text          = @"NAME";
        [self addSubview:self.nameLabel];
        
        self.stateLabel              = [[UILabel alloc] init];
        self.stateLabel.textColor    = [UIColor lightGrayColor];
        self.stateLabel.font         = [UIFont systemFontOfSize:13 weight:0.2];
        self.stateLabel.left         = self.avatarView.right + 10;
        self.stateLabel.width        = [UIScreen mainScreen].bounds.size.width - 10 - self.timeLabel.width - 15;
        self.stateLabel.height       = 20;
        self.stateLabel.top          = self.nameLabel.bottom;
        self.stateLabel.text         = @"STATE";
        [self addSubview:self.stateLabel];
        
    }
    return self;
}

- (void)awakeFromNib {
    // Initialization code
    [self.avatarView setCornerRadius:self.avatarView.width/2];
}

- (void)configCellWithDataModel:(id)model withUserDictionary:(NSDictionary *)userInfo{
    [super configCellWithDataModel:model withUserDictionary:userInfo];
    MSMActivityModel *actModel = model;
    self.avatarView.image = [UIImage imageNamed:actModel.avatar];
    self.nameLabel.text   = actModel.name;
    self.stateLabel.text  = actModel.stateLabel;
    self.timeLabel.text   = actModel.time;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (CGSize)sizeThatFits:(CGSize)size{
    //    CGFloat totalHeight = AVATAR_WIDTH;
    return CGSizeMake(size.width, 65);
}

@end
