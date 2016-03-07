//
//  ActivityModel.m
//  CPJSidebarViewController
//
//  Created by shuaizhai on 3/7/16.
//  Copyright © 2016 shuaizhai. All rights reserved.
//

#import "ActivityModel.h"

CPJMODEL_IMPLEMENT(MSMActivityModel)

@implementation MSMModelGenerator

- (NSArray *)activitydata{
    MSMActivityModel *model1 = [MSMActivityModel new];
    model1.type       = @MSMACTIVITY_PURE_PIC;
    model1.avatar     = @"avatar2";
    model1.name       = @"RICHEL DANI";
    model1.stateLabel = @"SO HAPPY TODAY";
    model1.picArray   = @[@"1", @"2", @"3", @"4"];
    model1.time       = @"3 MIN AGO";
    
    MSMActivityModel *model2 = [MSMActivityModel new];
    model2.type       = @MSMACTIVITY_PLAIN_TEXT;
    model2.avatar     = @"avatar3";
    model2.name       = @"HILL CLINTON";
    model2.stateLabel = @"A LOT OF WORK TO DO!";
    model2.content    = @"Regardless of how GridLayout is configured, grid index 0 is fixed to the leading edge of the container and grid index N is fixed to its trailing edge";
    model2.time       = @"31 MIN AGO";
    
    
    return @[model1, model2];
}

@end