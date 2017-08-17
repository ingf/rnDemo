//
//  MapView.swift
//  rnDemo
//
//  Created by inf on 17/8/17.
//  Copyright © 2017年 Facebook. All rights reserved.
//


import UIKit
import MapKit

class MapView: UIView {
  var _isNormal: Bool = false
  var isNormal: Bool{
    get {
      return _isNormal
    }
    
    set {
      _isNormal = newValue
      if newValue {
        self.map!.mapType = MKMapType.hybrid
      }
    }
  }

  var map: MKMapView? = nil
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.map = MKMapView(frame: CGRect.init(x: 0, y: 0, width: 375, height: 375))
    self.addSubview(self.map!)
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
