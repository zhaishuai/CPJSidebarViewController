//
//  MSMActivityPurepicCell.m
//  CPJSidebarViewController
//
//  Created by shuaizhai on 3/7/16.
//  Copyright © 2016 shuaizhai. All rights reserved.
//
//

#import "MSMActivityPurepicCell.h"
#import "CPJGridLayoutView.h"

#define MARGIN           15
#define MAX_IMAGE        4
#define CONTAINER_VIEW_H 70

@interface MSMActivityPurepicCell ()

@property (nonatomic)CPJGridLayoutView *containerView;

@end

@implementation MSMActivityPurepicCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        self.containerView       = [[CPJGridLayoutView alloc] initWithMarginX:5 withMarginY:10 withQuantityOfEachRow:MAX_IMAGE];
        self.containerView.frame = CGRectMake(MARGIN, self.avatarView.bottom + MARGIN, [UIScreen mainScreen].bounds.size.width - MARGIN - MARGIN, CONTAINER_VIEW_H);
        self.containerView.clipsToBounds = YES;
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
        [self.containerView addSubview:imageView];
        if(++count >= MAX_IMAGE){
            break;
        }
    }
    [self.containerView layoutView];
    self.cellHeight = self.containerView.bottom + MARGIN;
}

- (void)prepareForReuse{
    [[self.containerView subviews] makeObjectsPerformSelector:@selector(removeFromSuperview)];
}

- (void)cellDidSelectedWithModel:(id)model withUserInfo:(NSDictionary *)userInfo{
    [super cellDidSelectedWithModel:model withUserInfo:userInfo];
    
    
}

@end
