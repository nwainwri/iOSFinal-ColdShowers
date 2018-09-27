//
//  ActivityListManager.swift
//  ColdShowers
//
//  Created by Nathan Wainwright on 2018-09-23.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

import UIKit
import CoreData

class ActivityListManager: NSObject {
  
  var activities: [CoreActivity] = []
  var strength: [CoreActivity] = []
  var mindful: [CoreActivity] = []
  var yoga: [CoreActivity] = []
  
  override init() {
    
    // constants
    guard let appDelegate =
      UIApplication.shared.delegate as? AppDelegate else {
        return
    }
    let context = appDelegate.persistentContainer.viewContext
    
    
    // how to break into own functions?
    // or have one general 'helper' function that loads each array properly.
    
    
    let allActivities = NSFetchRequest<CoreActivity>(entityName: "CoreActivity")
    let sort = NSSortDescriptor(key: #keyPath(CoreActivity.category), ascending: true)
    allActivities.sortDescriptors = [sort]
    do {
      activities = try context.fetch(allActivities)
    } catch let error as NSError {
      print("Could not fetch. \(error), \(error.userInfo)")
    }

    let allStrength = NSFetchRequest<CoreActivity>(entityName: "CoreActivity")
    allStrength.predicate = NSPredicate(format: "category == 0")

    do {
      strength = try context.fetch(allStrength)
    } catch let error as NSError {
      print("Could not fetch. \(error), \(error.userInfo)")
    }
    
    let allMindFul = NSFetchRequest<CoreActivity>(entityName: "CoreActivity")
    allMindFul.predicate = NSPredicate(format: "category == 1")

    do {
      mindful = try context.fetch(allMindFul)
    } catch let error as NSError {
      print("Could not fetch. \(error), \(error.userInfo)")
    }

    let allYoga = NSFetchRequest<CoreActivity>(entityName: "CoreActivity")
    allYoga.predicate = NSPredicate(format: "category == 2")

    do {
      yoga = try context.fetch(allYoga)
      
    } catch let error as NSError {
      print("Could not fetch. \(error), \(error.userInfo)")
    }

  }
  
  
  
  // MARK: TIMER
  
  func generateTime() -> String{
    
    let formatter = DateFormatter()
    var activityTotalTime = Date()
    
    formatter.dateFormat = "HH:mm:ss"
    let hour = 00
    let minutes = 15
    let seconds = 00
    activityTotalTime = formatter.date(from: "\(hour):\(minutes):\(seconds)")!
    let finalTime = formatter.string(from: activityTotalTime)
    //    print(activityTotalTime)
    //    print(finalTime)
    return finalTime
  }
  
  func getNewList() -> [CoreActivity] {
//    let strengthArray = activities.filter{$0.category == 0}
//    let mindfullArray = activities.filter{$0.category == 1}
//    let yogaArray = activities.filter{$0.category == 2}
    let strengthCount = strength.count
    let mindfullCount = mindful.count
    let yogaCount = yoga.count
    
    let randomStrength = strength[Int(arc4random_uniform(UInt32(strengthCount)) + 0)]
    let randomMindfull = mindful[Int(arc4random_uniform(UInt32(mindfullCount)) + 0)]
    let randomYoga = yoga[Int(arc4random_uniform(UInt32(yogaCount)) + 0)]
    
    return [randomStrength, randomMindfull, randomYoga]
  }
  
}
