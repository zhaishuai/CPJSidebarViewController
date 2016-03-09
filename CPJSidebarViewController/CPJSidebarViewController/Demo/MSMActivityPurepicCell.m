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

@interface MSMActivityPurepicCell ()

@property (nonatomic)CPJGridLayoutView *containerView;

@end

@implementation MSMActivityPurepicCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        self.containerView       = [[CPJGridLayoutView alloc] initWithMarginX:5 withMarginY:10 withQuantityOfEachRow:4];
        self.containerView.frame = CGRectMake(15, 75, [UIScreen mainScreen].bounds.size.width - 15 - 15, 70);
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
        if(++count >= 4){
            break;
        }
    }
    [self.containerView layoutView];
    self.cellHeight            = self.containerView.bottom + 15;
}

- (void)prepareForReuse{
    [[self.containerView subviews] makeObjectsPerformSelector:@selector(removeFromSuperview)];
}

@end
