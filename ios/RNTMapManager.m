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
#import "RNTMap.h"
#import "RNTMapManager.h"
#import <React/UIView+React.h>

@interface RNTMapManager() <MKMapViewDelegate>
@end

@implementation RNTMapManager

RCT_EXPORT_MODULE()
RCT_EXPORT_VIEW_PROPERTY(pitchEnabled, BOOL)
RCT_EXPORT_VIEW_PROPERTY(onChange, RCTBubblingEventBlock)
RCT_CUSTOM_VIEW_PROPERTY(region, MKCoordinateRegion, RNTMap)

{
  [view setRegion:json ? [RCTConvert MKCoordinateRegion:json] : defaultView.region animated:YES];
}

- (UIView *)view
{
  RNTMap *map = [RNTMap new];
  map.delegate = self;
  return map;
}

#pragma mark MKMapViewDelegate

- (void)mapView:(RNTMap *)mapView regionDidChangeAnimated:(BOOL)animated
{
  if (!mapView.onChange) {
    return;
  }
  
  MKCoordinateRegion region = mapView.region;
  mapView.onChange(@{
                     @"region": @{
                         @"latitude": @(region.center.latitude),
                         @"longitude": @(region.center.longitude),
                         @"latitudeDelta": @(region.span.latitudeDelta),
                         @"longitudeDelta": @(region.span.longitudeDelta),
                         }
                     });
}

@end
