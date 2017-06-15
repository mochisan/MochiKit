//
//  UICollectionView+Extensions.swift
//  Pods
//
//  Created by Akihiro Mochida on 2017/06/04.
//  Copyright (c) 2017 Akihiro Mochida. All rights reserved.
//

import UIKit

extension UICollectionView {
  public func register<T: UICollectionViewCell>(_ cellType: T.Type) {
    let nib = UINib(nibName: cellType.className, bundle: Bundle.main)
    register(nib, forCellWithReuseIdentifier: cellType.className)
  }
  
  public func dequeue<T: UICollectionViewCell>(_ cellType: T.Type, indexPath: IndexPath) -> T? {
    return dequeueReusableCell(withReuseIdentifier: cellType.className, for: indexPath) as? T
  }
}
