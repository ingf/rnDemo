//
//  RNTMapManager.m
//  rnDemo
//
//  Created by inf on 16/8/17.
//  Copyright © 2017年 Facebook. All rights reserved.
//

// RNTMapManager.m
#import <MapKit/MapKit.h>

#import <React/RCTViewManager.h>

@interface RNTMapManager : RCTViewManager
@end

@implementation RNTMapManager

RCT_EXPORT_MODULE()
RCT_EXPORT_VIEW_PROPERTY(pitchEnabled, BOOL)



- (UIView *)view
{
  return [[MKMapView alloc] init];
}

@end
