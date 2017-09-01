//
//  EventManager.m
//  rnDemo
//
//  Created by inf on 1/9/17.
//  Copyright © 2017年 Facebook. All rights reserved.
//

#import "EventManager.h"

@implementation EventManager

- (instancetype)init
{
  self = [super init];
  if (self) {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(calendarEventReminderReceived:) name:@"addBtn" object:nil];
  }
  return self;
}

RCT_EXPORT_MODULE();

- (NSArray<NSString *> *)supportedEvents
{
  return @[@"EventReminder"];
}

- (void)calendarEventReminderReceived:(NSNotification *)notification
{
  [self sendEventWithName:@"EventReminder" body:@{@"name": @"xx"}];
}


@end
