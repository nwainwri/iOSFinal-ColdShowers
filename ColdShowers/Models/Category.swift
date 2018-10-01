//
//  Category.swift
//  ColdShowers
//
//  Created by Nathan Wainwright on 2018-09-26.
//  Copyright © 2018 Kit Clark-O'Neil and Nathan Wainwright All rights reserved.
//

import UIKit

enum Category:Int {
  case strength = 0
  case mindful = 1
  case yoga = 2
  
  func toPrettyString() -> String {
    switch self{
    case .strength:
      return "Strength"
    case .mindful:
      return "Mindful"
    case .yoga:
      return "Yoga"
    }
  }
}

