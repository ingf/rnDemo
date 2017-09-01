//
//  CalendarManager.h
//  rnDemo
//
//  Created by inf on 18/8/17.
//  Copyright © 2017年 Facebook. All rights reserved.
//



// CalendarManager.h
#import <React/RCTBridgeModule.h>
#import <React/RCTLog.h>
#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

@interface CalendarManager : NSObject <RCTBridgeModule>

- (void)calendarEventReminderReceived:(NSNotification *)notification;

@end
