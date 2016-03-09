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
    model2.time       = @"8 MIN AGO";
    
    MSMActivityModel *model3 = [MSMActivityModel new];
    model3.type       = @MSMACTIVITY_PHOTO_TEXT;
    model3.avatar     = @"avatar2";
    model3.name       = @"JIM";
    model3.stateLabel = @"LOVE CPJLib";
    model3.picArray   = @[@"1", @"2", @"3", @"4"];
    model3.time       = @"32 MIN AGO";
    model3.content    = @"Regardless of how GridLayout is configured, grid index 0 is fixed to the leading edge of the container and grid index N is fixed to its trailing edge";
    
    MSMActivityModel *model4 = [MSMActivityModel new];
    model4.type       = @MSMACTIVITY_PHOTO_TEXT;
    model4.avatar     = @"avatar";
    model4.name       = @"RICHARD";
    model4.stateLabel = @"GOOD JOB";
    model4.picArray   = @[@"2", @"1", @"3", @"4"];
    model4.time       = @"38 MIN AGO";
    model4.content    = @"短文学-短篇原创文学。本频道精选经典优美散文供大家欣赏。精选的现代短篇散文，经典爱情散文可以供大家欣赏和学习，大家也可以发表自己的文章散文";
    
    MSMActivityModel *model5 = [MSMActivityModel new];
    model5.type       = @MSMACTIVITY_PURE_PIC;
    model5.avatar     = @"avatar3";
    model5.name       = @"RICHEL DANI";
    model5.stateLabel = @"SO HAPPY TODAY";
    model5.picArray   = @[@"4", @"3", @"1", @"2"];
    model5.time       = @"1 HOUR AGO";
    
    
    MSMActivityModel *model6 = [MSMActivityModel new];
    model6.type       = @MSMACTIVITY_PLAIN_TEXT;
    model6.avatar     = @"avatar";
    model6.name       = @"BILL WUDITY";
    model6.stateLabel = @"A LOT OF WORK TO DO!";
    model6.content    = @"Go (often referred to as golang) is an open source programming language developed at Google[10] in 2007 by Robert Griesemer, Rob Pike, and Ken Thompson.[8] Designed primarily for systems programming, it is a compiled, statically typed language in the tradition of Algol and C, with garbage collection, memory safety features and CSP-style concurrent programming features added.";
    model6.time       = @"1.2 HOUR AGO";
    
    MSMActivityModel *model7 = [MSMActivityModel new];
    model7.type       = @MSMACTIVITY_PHOTO_TEXT;
    model7.avatar     = @"avatar";
    model7.name       = @"RICHARD";
    model7.stateLabel = @"GOOD JOB";
    model7.picArray   = @[@"3", @"1", @"2", @"4"];
    model7.time       = @"38 MIN AGO";
    model7.content    = @"短文学-短篇原创文学。本频道精选经典优美散文供大家欣赏。精选的现代短篇散文，经典爱情散文可以供大家欣赏和学习，大家也可以发表自己的文章散文";
    
    return @[model1, model2, model3, model4, model5, model6, model7];
}

@end