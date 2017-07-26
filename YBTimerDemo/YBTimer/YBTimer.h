//
//  YBTimer.h
//  Mus3D
//
//  Created by wyb on 2017/4/11.
//  Copyright © 2017年 zhongtianyiguan. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^YBTimerBlock)(id userInfo);

@interface YBTimer : NSObject

+ (NSTimer *) scheduledTimerWithTimeInterval:(NSTimeInterval)interval
                                      target:(id)aTarget
                                    selector:(SEL)aSelector
                                    userInfo:(id)userInfo
                                     repeats:(BOOL)repeats;

+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)interval
                                      block:(YBTimerBlock)block
                                   userInfo:(id)userInfo
                                    repeats:(BOOL)repeats;

@end
