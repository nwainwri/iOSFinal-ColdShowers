//
//  defaultActivities.swift
//  ColdShowers
//
//  Created by Nathan Wainwright on 2018-09-21.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

import UIKit
import CoreData


//MARK: STRENGTH
// strengthOne, strengthTwo, strengthThree, strengthFour, strengthFive, strengthSix, strengthSeven, strengthEight, strengthNine,

//let test = CoreActivity(


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

//MARK: MINDFUL
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

//MARK: YOGA
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
    let strengthZero = CoreActivity(context:context, name: "Pushups", areaOfBody: ["chest", "arms"], instructions: "pushups", category: 0, photo: "pushups")
    let strengthOne = CoreActivity(context: context, name: "Sit Ups", areaOfBody: ["stomach", "legs"], instructions: "", category: 0, photo: "situps")
    let strengthTwo = CoreActivity(context: context, name: "Crunches", areaOfBody: ["stomach"], instructions: "", category: 0, photo: "crunches")
    let strengthThree = CoreActivity(context: context, name: "Leg Lifts ", areaOfBody: ["legs"], instructions: "", category: 0, photo: "leglifts")
    let strengthFour = CoreActivity(context: context, name: "Squats", areaOfBody: ["legs","back"], instructions: "", category: 0, photo: "squats")
    let strengthFive = CoreActivity(context: context, name: "Plank", areaOfBody: ["back","stomach", "arms"], instructions: "", category: 0, photo: "plank")
    let strengthSix = CoreActivity(context: context, name: "Lunges", areaOfBody: ["legs"], instructions: "", category: 0, photo: "lunges")
    let strengthSeven = CoreActivity(context: context, name: "Pike Pushup", areaOfBody: ["back","legs", "arms"], instructions: "", category: 0, photo: "pikePushUp")
    let strengthEight = CoreActivity(context: context, name: "Bear Crawl", areaOfBody: ["back","arms"], instructions: "", category: 0, photo: "bearcrawl")
    let strengthNine = CoreActivity(context: context, name: "Hip/Thigh Extension", areaOfBody: ["legs","stomach"], instructions: "", category: 0, photo:"hipthigh")
    
    // mindful category is Int == 1
    let mindZero = CoreActivity(context: context, name: "Focus on a Single Minute", areaOfBody: ["mind","soul"], instructions: "", category: 1, photo:"mindful")
    let mindOne = CoreActivity(context: context, name: "Focus on a Single Object", areaOfBody: ["mind","soul"], instructions: "", category: 1, photo:"mindful")
    let mindTwo = CoreActivity(context: context, name: "Band of Light", areaOfBody: ["mind","soul"], instructions: "", category: 1, photo:"mindful")
    let mindThree = CoreActivity(context: context, name: "Inner-Outer Experience", areaOfBody: ["mind","soul"], instructions: "", category: 1, photo:"mindful")
    let mindFour = CoreActivity(context: context, name: "Record Three Minutes of Thoughts", areaOfBody: ["mind","soul"], instructions: "", category: 1, photo:"mindful")
    let mindFive = CoreActivity(context: context, name: "Thought Defusion", areaOfBody: ["mind","soul"], instructions: "", category: 1, photo:"mindful")
    let mindSix = CoreActivity(context: context, name: "Describe Your Emotion", areaOfBody: ["mind","soul"], instructions: "", category: 1, photo:"mindful")
    let mindSeven = CoreActivity(context: context, name: "Focus Shifting", areaOfBody: ["mind","soul"], instructions: "", category: 1, photo:"mindful")
    let mindEight = CoreActivity(context: context, name: "Mindful Breathing", areaOfBody: ["mind","soul"], instructions: "", category: 1, photo:"mindful")
    let mindNine = CoreActivity(context: context, name: "Mindful Seeing", areaOfBody: ["mind","soul"], instructions: "", category: 1, photo:"mindful")
    
    // yoga category is Int == 2
    let yogaZero = CoreActivity(context: context, name: "Mountain Pose", areaOfBody: ["legs", "arms"], instructions: "", category: 2, photo:"mountain")
    let yogaOne = CoreActivity(context: context, name: "Tree Pose", areaOfBody: ["legs"], instructions: "", category: 2, photo:"tree")
    let yogaTwo = CoreActivity(context: context, name: "Child's Pose", areaOfBody: ["legs","arms"], instructions: "", category: 2, photo:"child")
    let yogaThree = CoreActivity(context: context, name: "Downward Facing Dog", areaOfBody: ["legs","back", "arms"], instructions: "", category: 2, photo:"downwarddog")
    let yogaFour = CoreActivity(context: context, name: "Warrior I", areaOfBody: ["legs","arms"], instructions: "", category: 2, photo:"warriorOne")
    let yogaFive = CoreActivity(context: context, name: "Triangle Pose", areaOfBody: ["legs","back"], instructions: "", category: 2, photo:"triangle")
    let yogaSix = CoreActivity(context: context, name: "Chair Pose", areaOfBody: ["legs","back", "arms"], instructions: "", category: 2, photo:"chair")
    let yogaSeven = CoreActivity(context: context, name: "Cobra Pose", areaOfBody: ["back","arms"], instructions: "", category: 2, photo:"cobra")
    let yogaEight = CoreActivity(context: context, name: "Cobbler’s Pose", areaOfBody: ["legs"], instructions: "", category: 2, photo:"cobbler")
    let yogaNine = CoreActivity(context: context, name: "Corpose Pose", areaOfBody: ["body","mind"], instructions: "", category: 2, photo:"corpse")
    
    appDelegate.saveContext()
    
//    strengthZero.
    
//    name: "Pushups", areaOfBody: ["chest", "arms"], instructions: "pushups", category: .strength, photo: "pushups")

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

