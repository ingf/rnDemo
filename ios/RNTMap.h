//
//  RNTMap.h
//  rnDemo
//
//  Created by inf on 17/8/17.
//  Copyright © 2017年 Facebook. All rights reserved.
//



#import <MapKit/MapKit.h>

#import <React/RCTComponent.h>

@interface RNTMap: MKMapView

@property (nonatomic, copy) RCTBubblingEventBlock onChange;

@end
