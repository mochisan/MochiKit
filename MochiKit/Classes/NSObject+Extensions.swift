//
//  NSObject+Extensions.swift
//  Pods
//
//  Created by Akihiro Mochida on 2017/06/04.
//  Copyright (c) 2017 Akihiro Mochida. All rights reserved.
//

import UIKit

public extension NSObject {
  public static var className: String {
    return NSStringFromClass(self).components(separatedBy: ".").last!
  }
  
  public var className: String {
    return type(of: self).className
  }
}
