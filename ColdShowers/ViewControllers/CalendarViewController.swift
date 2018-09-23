//
//  CalendarViewController.swift
//  ColdShowers
//
//  Created by Kit Clark-O'Neil on 2018-09-20.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

import UIKit
import UserNotifications
class CalendarViewController: UIViewController {

  //MARK: CalenderView Properties
  @IBOutlet weak var timePicker: UIDatePicker!

  @IBOutlet weak var sundayButton: UIButton!
  @IBOutlet weak var mondayButton: UIButton!
  @IBOutlet weak var tuesdayButton: UIButton!
  @IBOutlet weak var wednesdayButton: UIButton!
  @IBOutlet weak var thursdayButton: UIButton!
  @IBOutlet weak var fridayButton: UIButton!
  @IBOutlet weak var saturdayButton: UIButton!

  @IBOutlet weak var doneButton: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  
  // MARK: Button Actions
  
  @IBAction func doneButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
  }
  
  
  
  
  
  

// MARK: - Notification date setting

    func requestUserPermission(completionHandler: @escaping (_ success :Bool) -> ()) {
      
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { (success, error) in
            if let error = error {
                print("Request Authorization Failed (\(error)")
            }
            completionHandler(success)
        }
      
    }
    func checkUserPermission () {
        UNUserNotificationCenter.current().getNotificationSettings { (notificationSettings) in
            switch notificationSettings.authorizationStatus {
            case .notDetermined:
                self.requestUserPermission(completionHandler: { _ in
                        self.checkUserPermission()
    
                })
              
            case .authorized:
              
              
            case .denied:
              
            }
        }
    }
//  func setActivity(date: Date, repeats: Bool) {
//    
//    
//    
//    
//    var myDateComponents = DateComponents()
//    let calendar = Calendar.current
//    
//    myDateComponents.hour = calendar.component(.hour, from: date)
//    myDateComponents.day = calendar.component(.day, from: date)
//    myDateComponents.minute = calendar.component(.minute, from: date)
//    
//    let trigger = UNCalendarNotificationTrigger(dateMatching: myDateComponents, repeats: repeats)
//    let request = UNNotificationRequest(identifier: "uniqueID", content: <#T##UNNotificationContent#>, trigger: <#T##UNNotificationTrigger?#>)
//
//  }
  

}
