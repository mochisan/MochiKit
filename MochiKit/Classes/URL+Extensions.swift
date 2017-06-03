//
//  URL+Extensions.swift
//  Pods
//
//  Created by Akihiro Mochida on 2017/06/04.
//  Copyright (c) 2017 Akihiro Mochida. All rights reserved.
//

import Foundation

extension URL {
  
  func isExistFile() -> Bool {
    let manager = FileManager.default
    return manager.fileExists(atPath: self.path)
  }
  
  func deleteIfExist() {
    let manager = FileManager.default
    if isExistFile() {
      do {
        try manager.removeItem(atPath: self.path)
      } catch let e {
        print(e)
      }
    }
  }
}
