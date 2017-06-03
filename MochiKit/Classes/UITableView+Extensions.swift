//
//  UITableView+Extensions.swift
//  Pods
//
//  Created by Akihiro Mochida on 2017/06/04.
//  Copyright (c) 2017 Akihiro Mochida. All rights reserved.
//

import UIKit

extension UITableView {
  public func register<T: UITableViewCell>(_ cellType: T.Type) {
    let nib = UINib(nibName: className, bundle: Bundle.main)
    register(nib, forCellReuseIdentifier: cellType.className)
  }
  
  public func dequeue<T: UITableViewCell>(_ cellType: T.Type) -> T {
    return dequeueReusableCell(withIdentifier: cellType.className) as! T
  }
  
  public func dequeue<T: UITableViewCell>(_ cellType: T.Type, indexPath: IndexPath) -> T {
    return dequeueReusableCell(withIdentifier: cellType.className, for: indexPath) as! T
  }
}
