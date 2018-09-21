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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    
    // MARK: - Notification date setting
    
    func setActivity(date: Date, repeats: Bool) {
        
        let content = UNMutableNotificationContent()
        content.title = "Time to go"
        let startButton = UNNotificationAction(identifier: "goButton", title: "Go", options: [])
        
        
        var myDateComponents = DateComponents()
        let calendar = Calendar.current
        
        myDateComponents.hour = calendar.component(.hour, from: date)
        myDateComponents.day = calendar.component(.day, from: date)
        myDateComponents.minute = calendar.component(.minute, from: date)
    
        let trigger = UNCalendarNotificationTrigger(dateMatching: myDateComponents, repeats: repeats)
        let request = UNNotificationRequest(identifier: "uniqueID", content: <#T##UNNotificationContent#>, trigger: <#T##UNNotificationTrigger?#>)
    }
}
