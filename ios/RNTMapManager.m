//
//  RNTMapManager.m
//  rnDemo
//
//  Created by inf on 16/8/17.
//  Copyright © 2017年 Facebook. All rights reserved.
//

// RNTMapManager.m
#import <MapKit/MapKit.h>
#import <React/RCTConvert.h>
#import <React/RCTConvert+MapKit.h>
#import <React/RCTViewManager.h>

@interface RNTMapManager : RCTViewManager
@end

@implementation RNTMapManager

RCT_EXPORT_MODULE()
RCT_EXPORT_VIEW_PROPERTY(pitchEnabled, BOOL)
RCT_CUSTOM_VIEW_PROPERTY(region, MKCoordinateRegion, MKMapView)

{
  [view setRegion: json ? [RCTConvert MKCoordinateRegion:json] : defaultView.region animated:YES];
}

- (UIView *)view
{
  return [[MKMapView alloc] init];
}

@end

