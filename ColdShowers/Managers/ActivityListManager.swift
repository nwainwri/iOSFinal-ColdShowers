//
//  ActivityListManager.swift
//  ColdShowers
//
//  Created by Nathan Wainwright on 2018-09-23.
//  Copyright © 2018 Kit Clark-O'Neil. / Nathan Wainwright All rights reserved.
//

import UIKit
import CoreData

class ActivityListManager: NSObject {
  
  var activities: [CoreActivity] = []
  var strength: [CoreActivity] = []
  var mindful: [CoreActivity] = []
  var yoga: [CoreActivity] = []
  
  var currentYoga: [CoreActivity] = []
  var currentStrength: [CoreActivity] = []
  var currentMindful: [CoreActivity] = []
  
  override init() {
    
    guard let appDelegate =
      UIApplication.shared.delegate as? AppDelegate else {
        return
    }
    let context = appDelegate.persistentContainer.viewContext
    
//  this is a rough example of how to save in background.... HARD TO ensure it's working
//    appDelegate.persistentContainer.performBackgroundTask { (context) in
//      context.save()
//    }
    
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
    
    var occurancesStrength: [NSNumber] = []
    for item in strength {
      let contains = occurancesStrength.contains { (occurance) -> Bool in
        return item.occurance == occurance.int64Value
      }
      if !contains {
        occurancesStrength.append(NSNumber.init(value: item.occurance))
      }
    }
    
    let uniqueStrength = [occurancesStrength.first!]
    
    let finalStrengthFetch = NSFetchRequest<CoreActivity>(entityName: "CoreActivity")
    let categoryStrength = NSPredicate(format: "category == 0")
    let occurenceStrength = NSPredicate(format: "occurance IN %@", argumentArray: [uniqueStrength])
    
    let compoundStrength = NSCompoundPredicate(andPredicateWithSubpredicates: [categoryStrength, occurenceStrength])
    finalStrengthFetch.predicate = compoundStrength
    do {
      let finalStrength = try context.fetch(finalStrengthFetch)
      currentStrength = finalStrength
    } catch let error as NSError {
      print("Could not fetch. FinalYogaFetch \(error), \(error.userInfo)")
    }
    
    var occurancesMindful: [NSNumber] = []
    for item in mindful {
      let contains = occurancesMindful.contains { (occurance) -> Bool in
        return item.occurance == occurance.int64Value
      }
      if !contains {
        occurancesMindful.append(NSNumber.init(value: item.occurance))
      }
    }
    
    let uniqueMindful = [occurancesMindful.first!]
    
    let finalMindfulFetch = NSFetchRequest<CoreActivity>(entityName: "CoreActivity")
    let categoryMindful = NSPredicate(format: "category == 1")
    let occurenceMindful = NSPredicate(format: "occurance IN %@", argumentArray: [uniqueMindful])
    
    let compoundMindful = NSCompoundPredicate(andPredicateWithSubpredicates: [categoryMindful, occurenceMindful])
    finalMindfulFetch.predicate = compoundMindful
    do {
      let finalMindful = try context.fetch(finalMindfulFetch)
      currentMindful = finalMindful
    } catch let error as NSError {
      print("Could not fetch. FinalYogaFetch \(error), \(error.userInfo)")
    }
    
    
    /// allYoga [0, 0, 2, 5, 5, 5, 5, 6, 6]
    //    let all = [0, 1, 1, 1, 2, 2, 3, 6, 7, 8, 8, 8]
    var occurancesYoga: [NSNumber] = [] /// e.g. [0, 2, 5, 6]
    
    for item in yoga {
      let contains = occurancesYoga.contains { (occurance) -> Bool in
        return item.occurance == occurance.int64Value
      }
      if !contains {
        occurancesYoga.append(NSNumber.init(value: item.occurance))
      }
    }
    
    let uniqueYoga = [occurancesYoga.first!]
    
    let finalYogaFetch = NSFetchRequest<CoreActivity>(entityName: "CoreActivity")
    let categoryYoga = NSPredicate(format: "category == 2")
    let occuranceYoga = NSPredicate(format: "occurance IN %@", argumentArray: [uniqueYoga])
    
    let compoundYoga = NSCompoundPredicate(andPredicateWithSubpredicates: [categoryYoga, occuranceYoga])
    finalYogaFetch.predicate = compoundYoga
    do {
      let finalYoga = try context.fetch(finalYogaFetch)
      currentYoga = finalYoga
    } catch let error as NSError {
      print("Could not fetch. FinalYogaFetch \(error), \(error.userInfo)")
    }
  }
  
  // MARK: activity list function
  func getNewList() -> [CoreActivity] {
    return [currentStrength[Int(arc4random_uniform(UInt32(currentStrength.count)) + 0)],
            currentMindful[Int(arc4random_uniform(UInt32(currentMindful.count)) + 0)],
            currentYoga[Int(arc4random_uniform(UInt32(currentYoga.count)) + 0)]]
  }
  
}
