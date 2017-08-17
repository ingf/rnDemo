//
//  RNManager.swift
//  rnDemo
//
//  Created by inf on 17/8/17.
//  Copyright © 2017年 Facebook. All rights reserved.
//

import UIKit
@objc(RNManager) //@objc关键字,用于将方法或对象暴露给OC,以供OC调用访问
class RNManager: NSObject {
  @objc func testCall() {
    print("Hi i am here ====>>> \(#function)")
  }
}
