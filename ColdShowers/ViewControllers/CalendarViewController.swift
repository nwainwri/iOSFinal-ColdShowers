//
//  CalendarViewController.swift
//  ColdShowers
//
//  Created by Kit Clark-O'Neil on 2018-09-20.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

import UIKit
import UserNotifications

enum weekDay:Int {
  case Sunday = 1,
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday
  
  func toString() -> String {
    switch self.rawValue {
    case 1:
      return "Sunday"
    case 2:
      return "Monday"
    case 3:
      return "Tuesday"
    case 4:
      return "Wednesday"
    case 5:
      return "Thursday"
    case 6:
      return "Friday"
    case 7:
      return "Saturday"
    default:
      return "NULL"
    }
  }
}

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
  
  @IBOutlet weak var repeatSwitch: UISwitch!
  @IBOutlet weak var calenderViewDoneButton: UIButton!
  @IBOutlet weak var scheduleSaveButton: UIButton!
  @IBOutlet weak var scheduleCancelButton: UIButton!
  
  var daysOfTheWeek = [Int]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    //        UNUserNotificationCenter.current().delegate = self
    daysOfTheWeek.removeAll()
    print("when is this called")
    
    // Do any additional setup after loading the view.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
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
  func checkUserPermission(request: @escaping (Bool) -> Void) {
    UNUserNotificationCenter.current().getNotificationSettings { (notificationSettings) in
      switch notificationSettings.authorizationStatus {
      case .notDetermined:
        self.requestUserPermission(completionHandler: { _ in
          self.checkUserPermission(request: request)
        })
        
      case .authorized:
        request(true)
        
      case .denied:
        request(false)
        
        let alert = UIAlertController(title: "Permission Denied",
                                      message: "Notification access denied, would you like to enable?",
                                      preferredStyle: UIAlertControllerStyle.alert);
        self.present(alert, animated: true, completion: nil)
        
      }
    }
  }
  func setActivity(dates: ([DateComponents], Bool)) {
    
    checkUserPermission { (res) in
      if res {
        for dateComponents in dates.0 {
          let notificationContent = UNMutableNotificationContent()
          
          notificationContent.title = "Wake up?"
          notificationContent.subtitle = "20 Minutes"
          notificationContent.categoryIdentifier = "Actions"
          
          var timeString = String()
          guard let hour = dateComponents.hour, let minute = dateComponents.minute, let weekday = dateComponents.weekday else {fatalError()}
          switch hour {
          case 0:
            timeString = "12:\(minute)AM"
          case ..<12:
            timeString = "\(hour):\(minute)AM"
          case ..<24:
            timeString = "\(hour - 12):\(minute)PM"
          default:
            print("Invalid hour")
          }
          
          // cause of "optional" string point...
          // how to correct though?
          //          dateComponents.weekday // is an int...
          //          weekDay(rawValue: weekday)
          //          weekDay.Friday.toString()
          
          let day = weekDay(rawValue: weekday)
          //          let dayString = day?.toString(weekday)
          // NEW CODE; STILL RETURNS 'OPTIONAL'
          let dayString = weekDay.toString(day!)
          
          //          guard let dayString = weekDay.toString(day) else {
          //            print("ERROR")
          //            return
          //          }
          //  print("THIS RIGHT HERE \(weekDay.Monday.toString(2))") // this weill print out "Monday"
          //basically somewhere in here there needs to be a guard statment, or if let... to unwrap the string optional safely
          
          
          notificationContent.userInfo = ["Time": timeString]
          notificationContent.userInfo = ["Day": dayString]
          //          notificationContent.userInfo = ["Day" : "TEST"] // doesn't change the 'daystring' output at all
          
          let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: dates.1)
          let request = UNNotificationRequest(identifier: "\(dateComponents)", content: notificationContent, trigger: trigger)
          UNUserNotificationCenter.current().add(request, withCompletionHandler: { (error) in
            if let error = error {
              print(error)
            }
          })
          UNUserNotificationCenter.current().getPendingNotificationRequests(completionHandler: { (request) in
            print("\(notificationContent.userInfo)")
          })
          
        }
      }
    }
  }
  
  func setUpNotificationCenter() {
    let actionShowDetails = UNNotificationAction(identifier: "Go", title: "Jump In", options: [.foreground])
    let notActionShowDetails = UNNotificationAction(identifier: "Don't", title: "Call it off", options: [])
    
    // create category with the action
    let category = UNNotificationCategory(identifier: "Actions", actions: [actionShowDetails, notActionShowDetails], intentIdentifiers: [], options: [])
    
    UNUserNotificationCenter.current().setNotificationCategories(Set([category]))
  }
  
  // MARK: - Button operation
  @IBAction func scheduleCancelButtonAction(_ sender: UIButton) {
    dismiss(animated: true, completion: nil)
  }
  
  @IBAction func scheduleSaveButtonAction(_ sender: UIButton) {
    dismiss(animated: true, completion: nil)
  }
  
  @IBAction func sundayButtonPressed(_ sender: UIButton) {
    sundayButton.isSelected = !sundayButton.isSelected
    if sundayButton.isSelected {
      daysOfTheWeek.append(1)
    }
    else {
      let index = daysOfTheWeek.index(of: 1)
      daysOfTheWeek.remove(at: index!)
    }
  }
  
  @IBAction func mondayButtonPressed(_ sender: UIButton) {
    mondayButton.isSelected = !mondayButton.isSelected
    if mondayButton.isSelected {
      daysOfTheWeek.append(2)
    }
    else {
      let index = daysOfTheWeek.index(of: 2)
      daysOfTheWeek.remove(at: index!)
    }
  }
  
  @IBAction func tuesdayButtonPressed(_ sender: UIButton) {
    tuesdayButton.isSelected = !tuesdayButton.isSelected
    if tuesdayButton.isSelected {
      daysOfTheWeek.append(3)
    }
    else {
      let index = daysOfTheWeek.index(of: 3)
      daysOfTheWeek.remove(at: index!)
    }
  }
  
  @IBAction func wednesdayButtonPressed(_ sender: UIButton) {
    wednesdayButton.isSelected = !wednesdayButton.isSelected
    if wednesdayButton.isSelected {
      daysOfTheWeek.append(4)
    }
    else {
      let index = daysOfTheWeek.index(of: 4)
      daysOfTheWeek.remove(at: index!)
    }
  }
  @IBAction func thursdayButtonPressed(_ sender: UIButton) {
    thursdayButton.isSelected = !thursdayButton.isSelected
    if thursdayButton.isSelected {
      daysOfTheWeek.append(5)
    }
    else {
      let index = daysOfTheWeek.index(of: 5)
      daysOfTheWeek.remove(at: index!)
    }
  }
  @IBAction func fridayButtonPressed(_ sender: UIButton) {
    fridayButton.isSelected = !fridayButton.isSelected
    if fridayButton.isSelected {
      daysOfTheWeek.append(6)
    }
    else {
      let index = daysOfTheWeek.index(of: 6)
      daysOfTheWeek.remove(at: index!)
    }
  }
  @IBAction func saturdayButtonPressed(_ sender: UIButton) {
    saturdayButton.isSelected = !saturdayButton.isSelected
    if saturdayButton.isSelected {
      daysOfTheWeek.append(7)
    }
    else {
      let index = daysOfTheWeek.index(of: 7)
      daysOfTheWeek.remove(at: index!)
    }
  }
  
  @IBAction func saveButton(_ sender: UIButton) {
    let myTimePicker = DateFormatter()
    myTimePicker.dateFormat = "HH:mm"
    
    let timeString = myTimePicker.string(from: timePicker.date)
    let time = timeString.split(separator: ":", maxSplits: 1, omittingEmptySubsequences: true)
    let minuteString = String(time[1])
    let hourString = String(time[0])
    guard let minute = Int(minuteString), let hour = Int(hourString) else {
      fatalError()
    }
    var input: ([DateComponents], Bool)
    input.0 = [DateComponents]()
    input.1 = repeatSwitch.isOn
    
    for day in daysOfTheWeek {
      
      var newDate = DateComponents()
      newDate.calendar = Calendar.current
      newDate.weekday = day
      newDate.minute = minute
      newDate.hour = hour
      input.0.append(newDate)
      
    }
    setActivity(dates: input)
    //    self.navigationController?.popViewController(animated: true)
    dismiss(animated: true, completion: nil)
  }
}


extension CalendarViewController: UNUserNotificationCenterDelegate {
  func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
    completionHandler([.alert])
  }
}

