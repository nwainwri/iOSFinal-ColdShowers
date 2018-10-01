//
//  TimerManager.swift
//  ColdShowers
//
//  Created by Nathan Wainwright on 2018-09-28.
//  Copyright © 2018 Kit Clark-O'Neil and Nathan Wainwright All rights reserved.
//

import UIKit
import CoreData

class ActivityTimeManager: NSObject {

  var hour = 00
  var minutes = 15
  var seconds = 00
  
  var context:NSManagedObjectContext?
  
  var times: [ActivityTimes] = []
  
  override init() {
    guard let appDelegate =
      UIApplication.shared.delegate as? AppDelegate else {
        return
    }
    context = appDelegate.persistentContainer.viewContext
    
    let allTimes = NSFetchRequest<ActivityTimes>(entityName: "ActivityTimes")
    do {
      times = (try context?.fetch(allTimes))!
    } catch let error as NSError {
      print("Could not fetch. \(error), \(error.userInfo)")
    }
  }
  
  func all() -> Int {
    return Int(times[0].timeMindfulValue) + Int(times[0].timeStrengthValue) + Int(times[0].timeYogaValue)
  }
  
  func getTime(_ category: String) -> Float {
    var timeValue:Float = 0.0
    if category == "Strength" {
      timeValue = times[0].timeStrengthValue
    } else if category == "Mindful" {
      timeValue = times[0].timeMindfulValue
    } else if category == "Yoga" {
      timeValue = times[0].timeYogaValue
    } else {
      timeValue = 666.0
    }
    return timeValue
  }
  
  func setTime(_ category: String, value: Float) {
    if category == "Strength" {
      times[0].timeStrengthValue = value
    } else if category == "Mindful" {
      times[0].timeMindfulValue = value
    } else if category == "Yoga" {
      times[0].timeYogaValue = value
    } else {
      fatalError("ERROR WITH CATEGORY OR VALUE")
    }
    
    do {
      try context?.save()
    } catch {
      fatalError("Failed saving")
    }
  }
}
