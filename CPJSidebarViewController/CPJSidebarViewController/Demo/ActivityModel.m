//
//  ActivityModel.m
//  CPJSidebarViewController
//
//  Created by shuaizhai on 3/7/16.
//  Copyright © 2016 shuaizhai. All rights reserved.
//

#import "ActivityModel.h"
#import <IOSGeneralPurposeFramework/IOSGeneralPurposeFramework.h>

CPJMODEL_IMPLEMENT(MSMActivityModel)

@implementation MSMModelGenerator

- (NSArray *)activitydata{
    
    NSArray *models = @[
                        @{@"type":@MSMACTIVITY_PURE_PIC, @"avatar":@"avatar2", @"name":@"RICHEL DANI", @"state_label":@"SO HAPPY TODAY", @"pic":@[@"1", @"2", @"3", @"4", ], @"time":@"3 MIN AGO"},
                        @{@"type":@MSMACTIVITY_PLAIN_TEXT, @"avatar":@"avatar3", @"name":@"HILL CLINTON", @"state_label":@"A LOT OF WORK TO DO!", @"content":@"Regardless of how GridLayout is configured, grid index 0 is fixed to the leading edge of the container and grid index N is fixed to its trailing edge", @"time":@"8 MIN AGO"},
                        @{@"type":@MSMACTIVITY_PHOTO_TEXT, @"avatar":@"avatar2", @"name":@"JIM", @"state_label":@"LOVE CPJLib", @"pic":@[@"1", @"2", @"3", @"4", ], @"time":@"32 MIN AGO", @"content":@"Regardless of how GridLayout is configured, grid index 0 is fixed to the leading edge of the container and grid index N is fixed to its trailing edge"},
                        @{@"type":@MSMACTIVITY_PHOTO_TEXT, @"avatar":@"avatar", @"name":@"RICHARD", @"state_label":@"GOOD JOB", @"pic":@[@"2", @"1", @"3", @"4"], @"time":@"38 MIN AGO", @"content":@"短文学-短篇原创文学。本频道精选经典优美散文供大家欣赏。精选的现代短篇散文，经典爱情散文可以供大家欣赏和学习，大家也可以发表自己的文章散文"},
                        @{@"type":@MSMACTIVITY_PURE_PIC, @"avatar":@"avatar3", @"name":@"RICHEL DANI", @"state_label":@"SO HAPPY TODAY", @"pic":@[@"4", @"3", @"1", @"2"], @"time":@"1 HOUR AGO"},
                        @{@"type":@MSMACTIVITY_PLAIN_TEXT, @"avatar":@"avatar", @"name":@"BILL WUDITY", @"state_label":@"A LOT OF WORK TO DO!", @"content":@"Go (often referred to as golang) is an open source programming language developed at Google[10] in 2007 by Robert Griesemer, Rob Pike, and Ken Thompson.[8] Designed primarily for systems programming, it is a compiled, statically typed language in the tradition of Algol and C, with garbage collection, memory safety features and CSP-style concurrent programming features added.", @"time":@"1.2 HOUR AGO"},
                        @{@"type":@MSMACTIVITY_PHOTO_TEXT, @"avatar":@"avatar", @"name":@"RICHARD", @"state_label":@"GOOD JOB", @"pic":@[@"2", @"1", @"3", @"4"], @"time":@"38 MIN AGO", @"content":@"短文学-短篇原创文学。本频道精选经典优美散文供大家欣赏。精选的现代短篇散文，经典爱情散文可以供大家欣赏和学习，大家也可以发表自己的文章散文"},
  
                        ];

    return  [[CPJJSONAdapter new] modelsOfClass:[MSMActivityModel class] fromJSON:models];
}

@end