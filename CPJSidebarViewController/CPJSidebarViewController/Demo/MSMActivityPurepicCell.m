//
//  MSMActivityPurepicCell.m
//  CPJSidebarViewController
//
//  Created by shuaizhai on 3/7/16.
//  Copyright © 2016 shuaizhai. All rights reserved.
//

#import "MSMActivityPurepicCell.h"

@interface MSMActivityPurepicCell ()

@property (nonatomic)UIView *containerView;

@end

@implementation MSMActivityPurepicCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        self.containerView = [[UIView alloc] initWithFrame:CGRectMake(15, 65 + 20, [UIScreen mainScreen].bounds.size.width - 15, 50)];
        [self addSubview:self.containerView];
    }
    return self;
}

- (void)configCellWithDataModel:(id)model withUserDictionary:(NSDictionary *)userInfo{
    [super configCellWithDataModel:model withUserDictionary:userInfo];
    
    MSMActivityModel *actModel = model;
    //    self.avatarView.image = [UIImage imageNamed:actModel.avatar];
    //    self.nameLabel.text   = actModel.name;
    //    self.stateLabel.text  = actModel.stateLabel;

    
//    MSMActivityModel *actmodel = model;
//    int                  count = 0;
//    for(NSString *url in actmodel.picArray){
//        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"avatar2"]];
//        imageView.width        = 50;
//        imageView.height       = 50;
//        imageView.left         = count * (imageView.width + 10);
//        [self.containerView addSubview:imageView];
//    }
    
    
}

- (CGSize)sizeThatFits:(CGSize)size{
    return CGSizeMake(size.width, self.containerView.bottom + 10);
}


@end
