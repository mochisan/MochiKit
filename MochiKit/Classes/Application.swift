//
//  Application.swift
//  Pods
//
//  Created by Akihiro Mochida on 2017/06/04.
//  Copyright (c) 2017 Akihiro Mochida. All rights reserved.
//

import UIKit

public final class Application {
  public static let shared = Application()
  
  public fileprivate(set) var bundleIdentifier = ""
  public fileprivate(set) var version = ""
  public fileprivate(set) var build = ""
  
  fileprivate init() {
    let bundle = Bundle.main
    bundleIdentifier = bundle.bundleIdentifier ?? ""
    version = bundle.infoDictionary?["CFBundleShortVersionString"] as? String ?? ""
    build = bundle.infoDictionary?["CFBundleVersion"] as? String ?? ""
  }
}
