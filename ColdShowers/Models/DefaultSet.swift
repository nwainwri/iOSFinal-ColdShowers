//
//  defaultActivities.swift
//  ColdShowers
//
//  Created by Nathan Wainwright on 2018-09-21.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

import UIKit

//MARK: STRENGTH
// strengthOne, strengthTwo, strengthThree, strengthFour, strengthFive, strengthSix, strengthSeven, strengthEight, strengthNine,
let strengthZero = Activity(name: "Pushups", areaOfBody: ["chest", "arms"], instructions: "pushups", category: .strength, photo: #imageLiteral(resourceName: "pushups"))
let strengthOne = Activity(name: "Sit Ups", areaOfBody: ["stomach", "legs"], instructions: "", category: .strength, photo: #imageLiteral(resourceName: "situps"))
let strengthTwo = Activity(name: "Crunches", areaOfBody: ["stomach"], instructions: "", category: .strength, photo: #imageLiteral(resourceName: "crunches"))
let strengthThree = Activity(name: "Leg Lifts ", areaOfBody: ["legs"], instructions: "", category: .strength, photo: #imageLiteral(resourceName: "leglifts"))
let strengthFour = Activity(name: "Squats", areaOfBody: ["legs","back"], instructions: "", category: .strength, photo: #imageLiteral(resourceName: "squats"))
let strengthFive = Activity(name: "Plank", areaOfBody: ["back","stomach", "arms"], instructions: "", category: .strength, photo: #imageLiteral(resourceName: "plank"))
let strengthSix = Activity(name: "Lunges", areaOfBody: ["legs"], instructions: "", category: .strength, photo: #imageLiteral(resourceName: "lunges"))
let strengthSeven = Activity(name: "Pike Pushup", areaOfBody: ["back","legs", "arms"], instructions: "", category: .strength, photo: #imageLiteral(resourceName: "pikePushUp"))
let strengthEight = Activity(name: "Bear Crawl", areaOfBody: ["back","arms"], instructions: "", category: .strength, photo: #imageLiteral(resourceName: "bearcrawl"))
let strengthNine = Activity(name: "Hip/Thigh Extension", areaOfBody: ["legs","stomach"], instructions: "", category: .strength, photo:#imageLiteral(resourceName: "hipthigh"))

//MARK: MINDFUL
// mindZero, mindTwo, mindThree, mindFour, mindFive, mindSix, mindSeven, mindEight, mindNine,
let mindZero = Activity(name: "Focus on a Single Minute", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:#imageLiteral(resourceName: "mindful"))
let mindOne = Activity(name: "Focus on a Single Object", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:#imageLiteral(resourceName: "mindful"))
let mindTwo = Activity(name: "Band of Light", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:#imageLiteral(resourceName: "mindful"))
let mindThree = Activity(name: "Inner-Outer Experience", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:#imageLiteral(resourceName: "mindful"))
let mindFour = Activity(name: "Record Three Minutes of Thoughts", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:#imageLiteral(resourceName: "mindful"))
let mindFive = Activity(name: "Thought Defusion", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:#imageLiteral(resourceName: "mindful"))
let mindSix = Activity(name: "Describe Your Emotion", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:#imageLiteral(resourceName: "mindful"))
let mindSeven = Activity(name: "Focus Shifting", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:#imageLiteral(resourceName: "mindful"))
let mindEight = Activity(name: "Mindful Breathing", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:#imageLiteral(resourceName: "mindful"))
let mindNine = Activity(name: "Mindful Seeing", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:#imageLiteral(resourceName: "mindful"))

//MARK: YOGA
// yogaZero, yogaTwo, yogaThree, yogaFour, yogaFive, yogaSix, yogaSeven, yogaEight, yogaNine,
let yogaZero = Activity(name: "Mountain Pose", areaOfBody: ["legs", "arms"], instructions: "", category: .yoga , photo:#imageLiteral(resourceName: "mountain"))
let yogaOne = Activity(name: "Tree Pose", areaOfBody: ["legs"], instructions: "", category: .yoga, photo:#imageLiteral(resourceName: "tree"))
let yogaTwo = Activity(name: "Child's Pose", areaOfBody: ["legs","arms"], instructions: "", category: .yoga, photo:#imageLiteral(resourceName: "child"))
let yogaThree = Activity(name: "Downward Facing Dog", areaOfBody: ["legs","back", "arms"], instructions: "", category: .yoga, photo:#imageLiteral(resourceName: "downwarddog"))
let yogaFour = Activity(name: "Warrior I", areaOfBody: ["legs","arms"], instructions: "", category: .yoga, photo:#imageLiteral(resourceName: "warriorOne"))
let yogaFive = Activity(name: "Triangle Pose", areaOfBody: ["legs","back"], instructions: "", category: .yoga, photo:#imageLiteral(resourceName: "triangle"))
let yogaSix = Activity(name: "Chair Pose", areaOfBody: ["legs","back", "arms"], instructions: "", category: .yoga, photo:#imageLiteral(resourceName: "chair"))
let yogaSeven = Activity(name: "Cobra Pose", areaOfBody: ["back","arms"], instructions: "", category: .yoga, photo:#imageLiteral(resourceName: "cobra"))
let yogaEight = Activity(name: "Cobbler’s Pose", areaOfBody: ["legs"], instructions: "", category: .yoga, photo:#imageLiteral(resourceName: "cobbler"))
let yogaNine = Activity(name: "Corpose Pose", areaOfBody: ["body","mind"], instructions: "", category: .yoga, photo:#imageLiteral(resourceName: "corpse"))

class DefaultSet: NSObject {
  let activities: [Activity]
  let categories: [category]
  enum category:String {
    case strength = "Strength"
    case mindfull = "Mindful"
    case yoga = "Yoga"
//    case noOption = "No Option"
//    func getTitle() -> String {
//      switch self {
//      case .strength:
//        return "Strength"
//      case .mindfull:
//        return "Mindful"
//      case .yoga:
//        return "Yoga"
//      case .noOption:
//        return "NO TITLE"
//      }
//    }
  }
  override init() {
    self.activities = [strengthZero, strengthOne, strengthTwo, strengthThree, strengthFour, strengthFive, strengthSix, strengthSeven, strengthEight, strengthNine, mindZero, mindOne, mindTwo, mindThree, mindFour, mindFive, mindSix, mindSeven, mindEight, mindNine, yogaZero, yogaOne, yogaTwo, yogaThree, yogaFour, yogaFive, yogaSix, yogaSeven, yogaEight, yogaNine]
    for item in self.activities {
      var counter = 0
      item.originalIndex = self.activities.index(of: item)!
      counter += 1
    }
    self.categories = [.strength, .mindfull, .yoga]
  }
}

extension DefaultSet {
  func retAmounts(category: category) -> Int {
    var innerCount = 1
    for item in self.activities {
      if item.category.rawValue == category.hashValue {
        innerCount += 1
      }
    }
    return innerCount
  }
  
  func retAmountsInt(category: Int) -> Int {
    var innerCount = 1
    for item in self.activities {
      if item.category.rawValue == category {
        innerCount += 1
      }
    }
    return innerCount
  }
  
  
  
}


