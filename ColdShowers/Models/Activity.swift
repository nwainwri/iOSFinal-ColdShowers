//
//  Activity.swift
//  ColdShowers
//
//  Created by Nathan Wainwright on 2018-09-21.
//  Copyright © 2018 Kit Clark-O'Neil and Nathan Wainwright All rights reserved.
//

import UIKit

class Activity: NSObject {
  enum category:Int {
    case strength = 0
    case mindfull = 1
    case yoga = 2
    
    func toPrettyString() -> String {
      switch self{
      case .strength:
        return "Strength"
      default:
        return "default"
      }
    }
  }
  
  let name: String // "pushups"
  let areaOfBody: Array<String> // ["arms","back"]
  let instructions: String // "pushups"
  let photo: String // image name
  let category: category
  var settings: Bool // used for preferences screen
  var occurance: Int // for algorithm
  var intensity: Int // for algorithm
  
  var originalIndex: Int

  init(name: String, areaOfBody: Array<String>, instructions: String, category: category, photo: String) {
    self.name = name
    self.areaOfBody = areaOfBody
    self.instructions = instructions
    self.settings = true
    self.occurance = 0
    self.intensity = 0
    self.category = category
    self.photo = photo

    self.originalIndex = 0
  }
}
