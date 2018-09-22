//
//  defaultActivities.swift
//  ColdShowers
//
//  Created by Nathan Wainwright on 2018-09-21.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

import UIKit

let pushups = Activity(name: "Pushups", areaOfBody: ["chest", "arms"], instructPhoto: "", category: "strength")
let situps = Activity(name: "Sit Ups", areaOfBody: ["stomach", "legs"], instructPhoto: "", category: "strength")

let raisin = Activity(name: "Raisin Exercise", areaOfBody: ["mind", "soul"], instructPhoto: "", category: "mindful")
let seeing = Activity(name: "Mindful Seeing", areaOfBody: ["mind","soul"], instructPhoto: "", category: "mindful")

let mountain = Activity(name: "Mountain Pose", areaOfBody: ["legs", "arms"], instructPhoto: "", category: "yoga")
let childPose = Activity(name: "Child’s Pose", areaOfBody: ["body"], instructPhoto: "", category: "yoga")


class DefaultSet: NSObject {
  
  let activities: [Activity]
  
  override init() {
    self.activities = [pushups, situps, raisin, seeing, mountain, childPose]

  }
  
}
