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
  
  override init() {
    
//    var activities: [NSManagedObject] = []
    
    guard let appDelegate =
      UIApplication.shared.delegate as? AppDelegate else {
        return
    }
    
    let managedContext =
      appDelegate.persistentContainer.viewContext
    
    //2
    let dataSetRequest = NSFetchRequest<CoreActivity>(entityName: "CoreActivity")
    //3
    
    do {
      activities = try managedContext.fetch(dataSetRequest)
      
    } catch let error as NSError {
      print("Could not fetch. \(error), \(error.userInfo)")
    }
 
    
    
    
    
  }
  
  

  
  
  
  
  
  let formatter = DateFormatter()
  var activityTotalTime = Date()
  
  
  func generateTime() -> String{
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
    
    
    //    let strengthArray = dataSet.activities.filter{$0.category.rawValue == 0}
    //    let mindfullArray = dataSet.activities.filter{$0.category.rawValue == 1}
    //    let yogaArray = dataSet.activities.filter{$0.category.rawValue == 2}
    //
    //    let strengthCount = strengthArray.count
    //    let mindfullCount = mindfullArray.count
    //    let yogaCount = yogaArray.count
    //
    //    let randomStrength = strengthArray[Int(arc4random_uniform(UInt32(strengthCount)) + 0)]
    //    let randomMindfull = mindfullArray[Int(arc4random_uniform(UInt32(mindfullCount)) + 0)]
    //    let randomYoga = yogaArray[Int(arc4random_uniform(UInt32(yogaCount)) + 0)]
    //
    //    return [randomStrength, randomMindfull, randomYoga]
    
    
    
    
    
    return []
  }
  
}
