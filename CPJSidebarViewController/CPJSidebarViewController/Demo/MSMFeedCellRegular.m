//
//  MSMFeedCellRegular.m
//  CPJSidebarViewController
//
//  Created by shuaizhai on 3/4/16.
//  Copyright © 2016 shuaizhai. All rights reserved.
//

#import "MSMFeedCellRegular.h"

@interface MSMFeedCellRegular ()

@property (weak, nonatomic) IBOutlet UIView *circle;
@property (weak, nonatomic) IBOutlet UIImageView *avatarImg;

@end

@implementation MSMFeedCellRegular

- (void)awakeFromNib {
    [super awakeFromNib];
    self.circle.layer.masksToBounds = YES;
    self.circle.layer.cornerRadius = self.circle.frame.size.width/2;
    self.avatarImg.layer.cornerRadius = self.avatarImg.frame.size.width/2;
    self.avatarImg.layer.masksToBounds = YES;
}

- (void)configCellWithDataModel:(id)model withUserDictionary:(NSDictionary *)userInfo{
    [super configCellWithDataModel:model withUserDictionary:userInfo];
    
//    self.textLabel.text = @"ewirowejro";
    
}

- (void)prepareForReuse{
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (CGFloat)cellHeight{
    return 425.0;
}

@end
