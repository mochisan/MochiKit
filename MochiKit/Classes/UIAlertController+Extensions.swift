//
//  UIAlertController+Extensions.swift
//  Pods
//
//  Created by Akihiro Mochida on 2017/06/04.
//  Copyright (c) 2017 Akihiro Mochida. All rights reserved.
//

import UIKit

extension UIAlertController {
  
  static func actionSheet(title: String? = nil, message: String? = nil) -> UIAlertController {
    return UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
  }
  
  static func alert(title: String? = nil, message: String? = nil) -> UIAlertController {
    return UIAlertController(title: title, message: message, preferredStyle: .alert)
  }
  
  func addDefault(title: String?, condition: Bool = true, handler: ((UIAlertAction) -> Void)?) {
    guard condition else { return }
    addAction(UIAlertAction(title: title, style: .default, handler: handler))
  }
  
  func addCancel(title: String?, condition: Bool = true, handler: ((UIAlertAction) -> Void)?) {
    guard condition else { return }
    addAction(UIAlertAction(title: title, style: .cancel, handler: handler))
  }
  
  func addDestructive(title: String?, condition: Bool = true, handler: ((UIAlertAction) -> Void)?) {
    guard condition else { return }
    addAction(UIAlertAction(title: title, style: .destructive, handler: handler))
  }
}
