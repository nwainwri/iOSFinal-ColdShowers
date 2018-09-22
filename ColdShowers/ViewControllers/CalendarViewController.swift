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

  @IBOutlet weak var calenderViewDoneButton: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    let notificationCenter = UNUserNotificationCenter.current()
//    notificationCenter.requestAuthorization(options: [.alert, .sound])
//    { (granted, error) in
//    if granted {
//    print("granted")
//    }
//    else {
//    print("not granted")
//    }
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: - Notification date setting

//    func setActivity(date: Date, repeats: Bool) {
//
//
//
//
//        var myDateComponents = DateComponents()
//        let calendar = Calendar.current
//
//        myDateComponents.hour = calendar.component(.hour, from: date)
//        myDateComponents.day = calendar.component(.day, from: date)
//        myDateComponents.minute = calendar.component(.minute, from: date)
//
//        let trigger = UNCalendarNotificationTrigger(dateMatching: myDateComponents, repeats: repeats)
//        let request = UNNotificationRequest(identifier: "uniqueID", content: <#T##UNNotificationContent#>, trigger: <#T##UNNotificationTrigger?#>)
//        let startButton = UNNotificationAction(identifier: "goButton", title: "Go", options: [])
//    }
//
//    // Create button
//
//    func createButton() {
//    let content = UNMutableNotificationContent()
//    content.title = "Time to go"
//    let myStartButton = UIButton()
//         = myStartButton
//    myStartButton.accessibilityIdentifier = "goButton"
//}


}
