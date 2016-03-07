//
//  MSMActivityPlainTextCell.m
//  CPJSidebarViewController
//
//  Created by shuaizhai on 3/7/16.
//  Copyright © 2016 shuaizhai. All rights reserved.
//

#import "MSMActivityPlainTextCell.h"

@implementation MSMActivityPlainTextCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        
    }
    return self;
}

- (void)configCellWithDataModel:(id)model withUserDictionary:(NSDictionary *)userInfo{
    [super configCellWithDataModel:model withUserDictionary:userInfo];
}

- (CGSize)sizeThatFits:(CGSize)size{
    //    CGFloat totalHeight = AVATAR_WIDTH;
    return CGSizeMake(size.width, 100);
}

@end
