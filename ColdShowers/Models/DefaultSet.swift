//
//  defaultActivities.swift
//  ColdShowers
//
//  Created by Nathan Wainwright on 2018-09-21.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

import UIKit
import CoreData


// strengthOne, strengthTwo, strengthThree, strengthFour, strengthFive, strengthSix, strengthSeven, strengthEight, strengthNine,
let strengthZero = Activity(name: "Pushups", areaOfBody: ["chest", "arms"], instructions: "pushups", category: .strength, photo: "pushups")
let strengthOne = Activity(name: "Sit Ups", areaOfBody: ["stomach", "legs"], instructions: "", category: .strength, photo: "situps")
let strengthTwo = Activity(name: "Crunches", areaOfBody: ["stomach"], instructions: "", category: .strength, photo: "crunches")
let strengthThree = Activity(name: "Leg Lifts ", areaOfBody: ["legs"], instructions: "", category: .strength, photo: "leglifts")
let strengthFour = Activity(name: "Squats", areaOfBody: ["legs","back"], instructions: "", category: .strength, photo: "squats")
let strengthFive = Activity(name: "Plank", areaOfBody: ["back","stomach", "arms"], instructions: "", category: .strength, photo: "plank")
let strengthSix = Activity(name: "Lunges", areaOfBody: ["legs"], instructions: "", category: .strength, photo: "lunges")
let strengthSeven = Activity(name: "Pike Pushup", areaOfBody: ["back","legs", "arms"], instructions: "", category: .strength, photo: "pikePushUp")
let strengthEight = Activity(name: "Bear Crawl", areaOfBody: ["back","arms"], instructions: "", category: .strength, photo: "bearcrawl")
let strengthNine = Activity(name: "Hip/Thigh Extension", areaOfBody: ["legs","stomach"], instructions: "", category: .strength, photo:"hipthigh")

// mindZero, mindTwo, mindThree, mindFour, mindFive, mindSix, mindSeven, mindEight, mindNine,
let mindZero = Activity(name: "Focus on a Single Minute", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:"mindful")
let mindOne = Activity(name: "Focus on a Single Object", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:"mindful")
let mindTwo = Activity(name: "Band of Light", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:"mindful")
let mindThree = Activity(name: "Inner-Outer Experience", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:"mindful")
let mindFour = Activity(name: "Record Three Minutes of Thoughts", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:"mindful")
let mindFive = Activity(name: "Thought Defusion", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:"mindful")
let mindSix = Activity(name: "Describe Your Emotion", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:"mindful")
let mindSeven = Activity(name: "Focus Shifting", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:"mindful")
let mindEight = Activity(name: "Mindful Breathing", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:"mindful")
let mindNine = Activity(name: "Mindful Seeing", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:"mindful")

// yogaZero, yogaTwo, yogaThree, yogaFour, yogaFive, yogaSix, yogaSeven, yogaEight, yogaNine,
let yogaZero = Activity(name: "Mountain Pose", areaOfBody: ["legs", "arms"], instructions: "", category: .yoga , photo:"mountain")
let yogaOne = Activity(name: "Tree Pose", areaOfBody: ["legs"], instructions: "", category: .yoga, photo:"tree")
let yogaTwo = Activity(name: "Child's Pose", areaOfBody: ["legs","arms"], instructions: "", category: .yoga, photo:"child")
let yogaThree = Activity(name: "Downward Facing Dog", areaOfBody: ["legs","back", "arms"], instructions: "", category: .yoga, photo:"downwarddog")
let yogaFour = Activity(name: "Warrior I", areaOfBody: ["legs","arms"], instructions: "", category: .yoga, photo:"warriorOne")
let yogaFive = Activity(name: "Triangle Pose", areaOfBody: ["legs","back"], instructions: "", category: .yoga, photo:"triangle")
let yogaSix = Activity(name: "Chair Pose", areaOfBody: ["legs","back", "arms"], instructions: "", category: .yoga, photo:"chair")
let yogaSeven = Activity(name: "Cobra Pose", areaOfBody: ["back","arms"], instructions: "", category: .yoga, photo:"cobra")
let yogaEight = Activity(name: "Cobbler’s Pose", areaOfBody: ["legs"], instructions: "", category: .yoga, photo:"cobbler")
let yogaNine = Activity(name: "Corpose Pose", areaOfBody: ["body","mind"], instructions: "", category: .yoga, photo:"corpse")

class DefaultSet {
//  let activities: [Activity]
//  let categories: [category]
//  enum category:String {
//    case strength = "Strength"
//    case mindfull = "Mindful"
//    case yoga = "Yoga"
////    case noOption = "No Option"
////    func getTitle() -> String {
////      switch self {
////      case .strength:
////        return "Strength"
////      case .mindfull:
////        return "Mindful"
////      case .yoga:
////        return "Yoga"
////      case .noOption:
////        return "NO TITLE"
////      }
////    }
//  }
  init() {
    
    guard let appDelegate =
      UIApplication.shared.delegate as? AppDelegate else {
        return
    }
    
    let context = appDelegate.persistentContainer.viewContext

    // strength category is Int == 0
    _ = CoreActivity(context:context, name: "Pushups", areaOfBody: ["chest", "arms"], instructions: "", category: 0, photo: "pushups")
    _ = CoreActivity(context: context, name: "Sit Ups", areaOfBody: ["stomach", "legs"], instructions: "", category: 0, photo: "situps")
    _ = CoreActivity(context: context, name: "Crunches", areaOfBody: ["stomach"], instructions: "", category: 0, photo: "crunches")
    _ = CoreActivity(context: context, name: "Leg Lifts ", areaOfBody: ["legs"], instructions: "", category: 0, photo: "leglifts")
    _ = CoreActivity(context: context, name: "Squats", areaOfBody: ["legs","back"], instructions: "", category: 0, photo: "squats")
    _ = CoreActivity(context: context, name: "Plank", areaOfBody: ["back","stomach", "arms"], instructions: "", category: 0, photo: "plank")
    _ = CoreActivity(context: context, name: "Lunges", areaOfBody: ["legs"], instructions: "", category: 0, photo: "lunges")
    _ = CoreActivity(context: context, name: "Pike Pushup", areaOfBody: ["back","legs", "arms"], instructions: "", category: 0, photo: "pikePushUp")
    _ = CoreActivity(context: context, name: "Bear Crawl", areaOfBody: ["back","arms"], instructions: "", category: 0, photo: "bearcrawl")
    _ = CoreActivity(context: context, name: "Hip/Thigh Extension", areaOfBody: ["legs","stomach"], instructions: "", category: 0, photo:"hipthigh")
    
    // mindful category is Int == 1
    _ = CoreActivity(context: context, name: "Focus on a Single Minute", areaOfBody: ["mind","soul"], instructions: "", category: 1, photo:"mindful")
    _ = CoreActivity(context: context, name: "Focus on a Single Object", areaOfBody: ["mind","soul"], instructions: "", category: 1, photo:"mindful")
    _ = CoreActivity(context: context, name: "Band of Light", areaOfBody: ["mind","soul"], instructions: "", category: 1, photo:"mindful")
    _ = CoreActivity(context: context, name: "Inner-Outer Experience", areaOfBody: ["mind","soul"], instructions: "", category: 1, photo:"mindful")
    _ = CoreActivity(context: context, name: "Record Three Minutes of Thoughts", areaOfBody: ["mind","soul"], instructions: "", category: 1, photo:"mindful")
    _ = CoreActivity(context: context, name: "Thought Defusion", areaOfBody: ["mind","soul"], instructions: "", category: 1, photo:"mindful")
    _ = CoreActivity(context: context, name: "Describe Your Emotion", areaOfBody: ["mind","soul"], instructions: "", category: 1, photo:"mindful")
    _ = CoreActivity(context: context, name: "Focus Shifting", areaOfBody: ["mind","soul"], instructions: "", category: 1, photo:"mindful")
    _ = CoreActivity(context: context, name: "Mindful Breathing", areaOfBody: ["mind","soul"], instructions: "", category: 1, photo:"mindful")
    _ = CoreActivity(context: context, name: "Mindful Seeing", areaOfBody: ["mind","soul"], instructions: "", category: 1, photo:"mindful")
    
    // yoga category is Int == 2
    _ = CoreActivity(context: context, name: "Mountain Pose", areaOfBody: ["legs", "arms"], instructions: "", category: 2, photo:"mountain")
    _ = CoreActivity(context: context, name: "Tree Pose", areaOfBody: ["legs"], instructions: "", category: 2, photo:"tree")
    _ = CoreActivity(context: context, name: "Child's Pose", areaOfBody: ["legs","arms"], instructions: "", category: 2, photo:"child")
    _ = CoreActivity(context: context, name: "Downward Facing Dog", areaOfBody: ["legs","back", "arms"], instructions: "", category: 2, photo:"downwarddog")
    _ = CoreActivity(context: context, name: "Warrior I", areaOfBody: ["legs","arms"], instructions: "", category: 2, photo:"warriorOne")
    _ = CoreActivity(context: context, name: "Triangle Pose", areaOfBody: ["legs","back"], instructions: "", category: 2, photo:"triangle")
    _ = CoreActivity(context: context, name: "Chair Pose", areaOfBody: ["legs","back", "arms"], instructions: "", category: 2, photo:"chair")
    _ = CoreActivity(context: context, name: "Cobra Pose", areaOfBody: ["back","arms"], instructions: "", category: 2, photo:"cobra")
    _ = CoreActivity(context: context, name: "Cobbler’s Pose", areaOfBody: ["legs"], instructions: "", category: 2, photo:"cobbler")
    _ = CoreActivity(context: context, name: "Corpose Pose", areaOfBody: ["body","mind"], instructions: "", category: 2, photo:"corpse")

    appDelegate.saveContext()
  }
  
//  override init() {
//    self.activities = [strengthZero, strengthOne, strengthTwo, strengthThree, strengthFour, strengthFive, strengthSix, strengthSeven, strengthEight, strengthNine, mindZero, mindOne, mindTwo, mindThree, mindFour, mindFive, mindSix, mindSeven, mindEight, mindNine, yogaZero, yogaOne, yogaTwo, yogaThree, yogaFour, yogaFive, yogaSix, yogaSeven, yogaEight, yogaNine]
//    for item in self.activities {
//      var counter = 0
//      item.originalIndex = self.activities.index(of: item)!
//      counter += 1
//    }
//    self.categories = [.strength, .mindfull, .yoga]
//  }
}

//extension DefaultSet {
//  func retAmounts(category: category) -> Int {
//    var innerCount = 1
//    for item in self.activities {
//      if item.category.rawValue == category.hashValue {
//        innerCount += 1
//      }
//    }
//    return innerCount
//  }
//
//  func retAmountsInt(category: Int) -> Int {
//    var innerCount = 1
//    for item in self.activities {
//      if item.category.rawValue == category {
//        innerCount += 1
//      }
//    }
//    return innerCount
//  }
//
//
//
//}

extension CoreActivity {
  convenience init(context: NSManagedObjectContext, name: String, areaOfBody: [String], instructions: String, category: Int, photo: String) {
    
    //(name: "Pushups", areaOfBody: ["chest", "arms"], instructions: "pushups", category: .strength, photo: "pushups")
    
    self.init(context: context)
    self.name = name
    self.areaOfBody = areaOfBody as NSArray
    self.instructions = instructions
    self.category = Int64(category)
    self.photo = photo
    
    
    self.originalIndex = 0
    self.settings = true
    self.intensity = 0
    self.occurance = 0
  }
}

