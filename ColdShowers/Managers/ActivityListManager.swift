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
    
    guard let appDelegate =
      UIApplication.shared.delegate as? AppDelegate else {
        return
    }
    let context = appDelegate.persistentContainer.viewContext
    
    
    
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
//    // swifty way... not CoreData way....
//    let strengthArray = activities.filter{$0.occurance > 0}
//    let mindfulArray = activities.filter{$0.occurance > 0}
//    let yogaArray = activities.filter{$0.occurance > 0}
//
    

//    let randomStrength = strength[Int(arc4random_uniform(UInt32(strength.count)) + 0)]
//    let randomMindfull = mindful[Int(arc4random_uniform(UInt32(mindful.count)) + 0)]
//    let randomYoga = yoga[Int(arc4random_uniform(UInt32(yoga.count)) + 0)]
    
//    return [randomStrength, randomMindfull, randomYoga]
    
//    NSPredicate("AND")
    // do a coredata pull, "pull all from category, then order by occoruance; then grab random from THAT last chunk
    
    // pull from Core Data, order by occourence, pull by category
    
    // pop that onto array, pull random element from array.
    
    
    
    return [strength[Int(arc4random_uniform(UInt32(strength.count)) + 0)],
            mindful[Int(arc4random_uniform(UInt32(mindful.count)) + 0)],
            yoga[Int(arc4random_uniform(UInt32(yoga.count)) + 0)]]
  }
  
}
