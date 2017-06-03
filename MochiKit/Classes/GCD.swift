//
//  GCD.swift
//  Pods
//
//  Created by Akihiro Mochida on 2017/06/03.
//  Copyright (c) 2017 Akihiro Mochida. All rights reserved.
//

import Foundation

public struct GCD {

  // MARK: - Queue
  
  public static func run(_ queue: DispatchQueue, _ block: @escaping () -> ()) {
    queue.async(execute: block)
  }
  
  public static func run(_ queue: DispatchQueue, _ afterDelay: Double, _ block: @escaping () -> ()) {
    queue.asyncAfter(deadline: DispatchTime.now() + Double(Int64(afterDelay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC), execute: block)
  }
  
  // MARK: - MainThread
  
  public static func runOnMainThread(_ block: @escaping () -> ()) {
    run(DispatchQueue.main, block)
  }
  
  public static func runOnMainThread(_ afterDelay: Double, _ block: @escaping () -> ()) {
    run(DispatchQueue.main, afterDelay, block)
  }
  
  // MARK: - Background
  
  public static func runInBackground(_ block: @escaping () -> ()) {
    run(DispatchQueue.global(qos: .default), block)
  }
  
  public static func runInBackground(_ afterDelay: Double, _ block: @escaping () -> ()) {
    run(DispatchQueue.global(qos: .default), afterDelay, block)
  }
}
