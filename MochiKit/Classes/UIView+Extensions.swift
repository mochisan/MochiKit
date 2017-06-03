//
//  UIView+Extensions.swift
//  Pods
//
//  Created by Akihiro Mochida on 2017/06/04.
//  Copyright (c) 2017 Akihiro Mochida. All rights reserved.
//

import UIKit

extension UIView {
  func capture() -> UIImage? {
    UIGraphicsBeginImageContextWithOptions(frame.size, false, 0.0)
    guard let context = UIGraphicsGetCurrentContext() else { return nil }
    context.translateBy(x: 0.0, y: 0.0)
    self.layer.render(in: context)
    let image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    
    return image
  }
}
