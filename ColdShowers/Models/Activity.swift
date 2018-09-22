//
//  Activity.swift
//  ColdShowers
//
//  Created by Nathan Wainwright on 2018-09-21.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

import UIKit

class Activity: NSObject {
  
  var name: String?
  var areaOfBody: Array<String>?
  var instructPhoto: String?
  var category: String?
  
  init(name: String, areaOfBody: Array<String>, instructPhoto: String, category: String) {
    self.name = name
    self.areaOfBody = areaOfBody
    self.instructPhoto = instructPhoto
    self.category = category
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
