//
//  Activity.swift
//  ColdShowers
//
//  Created by Nathan Wainwright on 2018-09-21.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

import UIKit

class Activity: NSObject {
  enum category:Int {
    case strength = 0
    case mindfull = 1
    case yoga = 2
  }
  
  let name: String // "pushups"
  let areaOfBody: Array<String> // ["arms","back"]
  let instructions: String // "pushups"
  let photo: UIImage // image name
  let category: category
  var settings: Bool // used for preferences screen
  var occurance: Int // for algorithm
  var intensity: Int // for algorithm
  
  var originalIndex: Int

  init(name: String, areaOfBody: Array<String>, instructions: String, category: category, photo: UIImage) {
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

//
//class NamedShapeClass {
//  var numberOfSides: Int = 0
//  var name: String
//
//  init(name: String) {
//    self.name = name
//  }
//
//  func description() -> String {
//    return "A shape with \(numberOfSides) sides."
//  }
//}
