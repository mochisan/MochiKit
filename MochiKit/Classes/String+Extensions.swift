//
//  String+Extensions.swift
//  Pods
//
//  Created by Akihiro Mochida on 2017/06/04.
//  Copyright (c) 2017 Akihiro Mochida. All rights reserved.
//

import Foundation

extension String {
  var url: URL? {
    return URL(string: self)
  }
}
