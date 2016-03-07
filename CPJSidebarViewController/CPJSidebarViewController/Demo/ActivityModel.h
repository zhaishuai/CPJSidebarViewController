//
//  ActivityModel.h
//  CPJSidebarViewController
//
//  Created by shuaizhai on 3/7/16.
//  Copyright © 2016 shuaizhai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <IOSGeneralPurposeFramework/IOSGeneralPurposeFramework.h>



#define MSMACTIVITY_PURE_PIC   0
#define MSMACTIVITY_PLAIN_TEXT 1
#define MSMACTIVITY_PHOTO_TEXT 2

CREATE_CPJMODEL_BEGAIN(MSMActivityModel)
    CPJMODEL_ADD_NSNUMBER_PROPERTY(type, type)
    CPJMODEL_ADD_NSSTRING_PROPERTY(avatar, avatar)
    CPJMODEL_ADD_NSSTRING_PROPERTY(name, name)
    CPJMODEL_ADD_NSSTRING_PROPERTY(stateLabel, state_label)
    CPJMODEL_ADD_NSSTRING_PROPERTY(content, content)
    CPJMODEL_ADD_NSARRAY_PROPERTY(NSString, picArray, pic)
    CPJMODEL_ADD_NSSTRING_PROPERTY(time, time)
CREATE_CPJMODEL_END

@interface MSMModelGenerator : NSObject

- (NSArray *)activitydata;

@end