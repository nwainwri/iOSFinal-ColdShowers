//
//  LoginViewController.swift
//  ColdShowers
//
//  Created by Kit Clark-O'Neil on 2018-09-20.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

import UIKit
import UserNotifications
class LoginViewController: UIViewController {
  
  // MARK: LoginView Properties
  @IBOutlet weak var usernameLabel: UILabel!
  @IBOutlet weak var usernameTextField: UITextField!
  @IBOutlet weak var passwordLabel: UILabel!
  @IBOutlet weak var passwordTextField: UITextField!
  @IBOutlet weak var loginButton: UIButton!
  
  let defaults = UserDefaults.standard
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    let testManager = ActivityListManager()
    
//    print("TEST: \(testManager.activities[0])")
    
    print("========================")
    let sampleStr = testManager.strength[0]
    print("sampleStr: \(sampleStr.name)")
    print(sampleStr.photo)
    
    
   
    
    print("========================")
    let sampleMind = testManager.mindful[0]
    print("sampleMind: \(sampleMind.name)")
    print(sampleMind.photo)
    
    print("========================")
    let sampleYoga = testManager.yoga[0]
    print("sampleYoga: \(sampleYoga.name)")
    print(sampleYoga.photo)
    
    // Do any additional setup after loading the view.\
    
//    //need to pull date history
//    let formatter1 = DateFormatter()
//    //    formatter1.dateFormat = "yyyy-MM-dd HH:mm:ss"
//    formatter1.dateFormat = "yyyy-MM-dd"
//    formatter1.timeZone = TimeZone(secondsFromGMT: 0)
//    let today = formatter1.string(from: Date())
//    let newDate = [today]
//    var userActivityHistory = defaults.array(forKey: "userActivityHistory")  as? [String] ?? ["ERROR NO DATES FOUND"]
//    var userActivityHistoryDates = [Date]()
//    for item in userActivityHistory {
//      guard let currentItem = formatter1.date(from: item) else {
//        fatalError()
//      }
//      userActivityHistoryDates.append(currentItem)
//    }
//    
    
    
    
    ////MARK: RAT NEST; KEEP FOR NOTE REFERENCE FOR TRICKS
    //    var dashAmount = 0
    //    var x = 0
    //    while x < userActivityHistoryDates.count {
    //      let isIndexValid = userActivityHistoryDates.indices.contains(x + 1)
    //      if isIndexValid != true {
    //        // do nothing
    //      } else {
    ////        let twentyFourHoursInSeconds: TimeInterval = 60 * 60 * 24
    //        var firstDate = userActivityHistoryDates[x]
    //        let isIndexValid = userActivityHistoryDates.indices.contains(x + 1)
    //        if isIndexValid != true {
    //        }
    //        var secondDate = userActivityHistoryDates[x + 1]
    //        let calendar = NSCalendar.current
    //
    //        let date1 = calendar.startOfDay(for: firstDate)
    //        let date2 = calendar.startOfDay(for: secondDate)
    //
    //        let components = calendar.dateComponents([.day], from: date1, to: date2)
    //
    //        if components.day == 1{
    //          dashAmount += 1
    //        } else {
    //          dashAmount = 0
    //        }
    //      }
    //      x += 1
    //    }
    //    print("===============")
    //    print("COUNTER: \(x)")
    //    print("DASH: \(dashAmount)")
    //    print("===============")
    //    print("test dates: \(userActivityHistoryDates) count: \(userActivityHistoryDates.count)")
    
    
    //
    //    if userActivityHistory.count < 1 {
    //      defaults.set(newDate, forKey: "userActivityHistory")
    //    } else {
    //      let currentDateString = userActivityHistory.last
    //      guard let currentDate = formatter1.date(from: currentDateString!) else {
    //        fatalError()
    //      }
    //      if currentDate > Date() {
    //        userActivityHistory.append(today)
    //        //writes to UserDefault
    //        defaults.set(userActivityHistory, forKey: "userActivityHistory")
    //      } else {
    //        print("DENIED AS : \(today) is the same as todays Date()")
    //      }
    //    }
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destinationViewController.
   // Pass the selected object to the new view controller.
   }
   */
  
  //MARK: Button Actions
  @IBAction func loginButtonPressed(_ sender: UIButton) {
    if usernameTextField.text == defaults.string(forKey: "Username") && passwordTextField.text == defaults.string(forKey: "Password") {
      //      self.performSegue(withIdentifier: "NavigationLoginVC", sender: nil)
      print("USER PASS RIGHT")
      self.performSegue(withIdentifier: "LoginSegue", sender: nil)
    } else {
      print("USER OR PASS WRONG")
    }
  }
  
}
