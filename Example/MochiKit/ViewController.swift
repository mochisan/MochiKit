//
//  ViewController.swift
//  MochiKit
//
//  Created by Akihiro Mochida on 06/03/2017.
//  Copyright (c) 2017 Akihiro Mochida. All rights reserved.
//

import UIKit
import MochiKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    GCD.runOnMainThread {
      print("in main thread")
    }
  }
}

