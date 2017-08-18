//
//  CalendarManagerBridge.m
//  rnDemo
//
//  Created by inf on 18/8/17.
//  Copyright © 2017年 Facebook. All rights reserved.
//

#import "CalendarManagerBridge.h"
#import <React/RCTBridgeModule.h>

@implementation CalendarManagerBridge

@end


@interface

RCT_EXTERN_MODULE(CalendarManager, NSObject)
RCT_EXTERN_METHOD(addEvent:(NSString *)name location:(NSString *)location date:(nonnull NSNumber *)date)

@end
