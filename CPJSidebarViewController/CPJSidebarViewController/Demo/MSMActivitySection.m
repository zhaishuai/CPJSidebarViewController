//
//  MSMActivitySection.m
//  CPJSidebarViewController
//
//  Created by shuaizhai on 3/7/16.
//  Copyright © 2016 shuaizhai. All rights reserved.
//

#import "MSMActivitySection.h"



@implementation MSMActivitySection

- (CPJSectionDataSourceCache *)getSectionDataSourceCacheWithRow:(NSInteger)row{

    CPJSectionDataSourceCache *cache = [self.dataSourceOfsection objectAtIndex:row];
    MSMActivityModel *model = (MSMActivityModel *)cache.data;
    switch ([model.type intValue]) {
        case MSMACTIVITY_PURE_PIC:{
            cache.cellIdentifier = MSMACTIVITY_PUREPIC_CELLID;
        }
            break;
            
        case MSMACTIVITY_PLAIN_TEXT:{
            cache.cellIdentifier = MSMACTIVITY_PLAIN_TEXT_CELLID;
        }
            break;
            
        case MSMACTIVITY_PHOTO_TEXT:{
            cache.cellIdentifier = MSMACTIVITY_PHOTOT_TEXT_CELLID;
        }
            break;
            
        default:
            break;
    }
    
    return cache;
}

@end
