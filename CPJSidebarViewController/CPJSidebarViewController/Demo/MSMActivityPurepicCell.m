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
        self.containerView            = [[UIView alloc] initWithFrame:CGRectMake(15, 75, [UIScreen mainScreen].bounds.size.width - 15, 70)];
        [self addSubview:self.containerView];
        
    }
    return self;
}

- (void)configCellWithDataModel:(id)model withUserDictionary:(NSDictionary *)userInfo{
    [super configCellWithDataModel:model withUserDictionary:userInfo];
    
    MSMActivityModel *actmodel = model;
    int                  count = 0;
    for(NSString *url in actmodel.picArray){
        UIImageView *imageView = [[CPJImageButton alloc] initWithImage:[UIImage imageNamed:url]];
        imageView.width        = 70;
        imageView.height       = 70;
        imageView.left         = count * (imageView.width + 5);
        [self.containerView addSubview:imageView];
        count ++;
    }
    self.cellHeight = self.containerView.bottom + 15;
}

- (void)prepareForReuse{
    [[self.containerView subviews] makeObjectsPerformSelector:@selector(removeFromSuperview)];
}

@end
