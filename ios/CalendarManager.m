//
//  CalendarManager.m
//  rnDemo
//
//  Created by inf on 18/8/17.
//  Copyright © 2017年 Facebook. All rights reserved.
//

#import "CalendarManager.h"
#import <React/RCTConvert.h>

@implementation CalendarManager

RCT_EXPORT_MODULE();
RCT_EXPORT_METHOD(addEvent:(NSString *)name details:(NSDictionary *)details)
{
  NSString *location = [RCTConvert NSString:details[@"location"]];
  NSDate *time = [RCTConvert NSDate:details[@"time"]];
  
  RCTLogInfo(@"Pretending to create an event %@ at %@", time, location);

}
- (NSDictionary *)constantsToExport
{
  return @{ @"firstDayOfTheWeek": @"Monday" };
}

@end
