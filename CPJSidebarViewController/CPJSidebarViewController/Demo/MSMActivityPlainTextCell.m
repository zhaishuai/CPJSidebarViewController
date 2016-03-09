//
//  MSMActivityPlainTextCell.m
//  CPJSidebarViewController
//
//  Created by shuaizhai on 3/7/16.
//  Copyright © 2016 shuaizhai. All rights reserved.
//

#import "MSMActivityPlainTextCell.h"

double height = 0;

@implementation MSMActivityPlainTextCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        self.contentTextLabel               = [[UILabel alloc] init];
        self.contentTextLabel.textColor     = [UIColor lightGrayColor];
        self.contentTextLabel.font          = [UIFont systemFontOfSize:14 weight:0.2];
        self.contentTextLabel.top           = self.avatarView.bottom + 15;
        self.contentTextLabel.left          = self.avatarView.left;
        self.contentTextLabel.width         = [UIScreen mainScreen].bounds.size.width - 15;
        self.contentTextLabel.numberOfLines = 0;
        [self addSubview:self.contentTextLabel];
    }
    return self;
}

- (void)configCellWithDataModel:(id)model withUserDictionary:(NSDictionary *)userInfo{
    [super configCellWithDataModel:model withUserDictionary:userInfo];
    MSMActivityModel *actModel   = model;
    self.contentTextLabel.text   = actModel.content;
    self.contentTextLabel.height = [self heightForLabel:self.contentTextLabel];
    height                       = self.contentTextLabel.bottom + 15;
    self.cellHeight              = self.contentTextLabel.bottom + 15;
}



@end
