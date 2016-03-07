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
        NSArray *nibObjects = [[NSBundle mainBundle] loadNibNamed:@"MSMBaseAvtivityCell" owner:self options:nil];
        UIView *view = [nibObjects firstObject];
        view.width = [[UIScreen mainScreen] bounds].size.width;
        [self addSubview:view];
    }
    return self;
}

- (void)awakeFromNib {
    // Initialization code
    [self.avatarView setCornerRadius:self.avatarView.width/2];
}

- (void)configCellWithDataModel:(id)model withUserDictionary:(NSDictionary *)userInfo{
    [super configCellWithDataModel:model withUserDictionary:userInfo];
    
    
    
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
