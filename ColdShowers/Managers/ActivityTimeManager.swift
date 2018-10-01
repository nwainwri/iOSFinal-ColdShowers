//
//  TimerManager.swift
//  ColdShowers
//
//  Created by Nathan Wainwright on 2018-09-28.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

import UIKit
import CoreData

class ActivityTimeManager: NSObject {
  
  //MARK: TIMER
//  var timer = Timer()
//  var isTimerRunning = false
//  let formatter = DateFormatter()
//  var activityTotalTime = Date()
  
  
  var hour = 00
  var minutes = 15
  var seconds = 00
  
  override init() {
    guard let appDelegate =
      UIApplication.shared.delegate as? AppDelegate else {
        return
    }
    let context = appDelegate.persistentContainer.viewContext
  }
  
  
  
  
//  // MARK: TIMER
//  func generateTime() -> String{
//
//    formatter.dateFormat = "HH:mm:ss"
//    activityTotalTime = formatter.date(from: "\(hour):\(minutes):\(seconds)")!
//    let finalTime = formatter.string(from: activityTotalTime)
//    //    print(activityTotalTime)
//    //    print(finalTime)
//    return finalTime
//  }
//
//  //  func runTimer() {
//  //    timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(.updateTimer)), userInfo: nil, repeats: true)
//  //  }
//
//  @objc func updateTimer() {
//    formatter.dateFormat = "HH:mm:ss"
//    seconds -= 1     //This will decrement(count down)the seconds.
//    //    timerLabel.text = “\(seconds)” //This will update the label.
//    print(seconds)
//  }
  
  
  
}
