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

    
    @IBOutlet weak var repeatSwitch: UISwitch!
    
  @IBOutlet weak var calenderViewDoneButton: UIButton!


    var daysOfTheWeek = [Int]()
    //    var time = DateComponents()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


        daysOfTheWeek.removeAll()
        

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
    func setActivity(dates: ([Date], Bool)) {
        
        checkUserPermission { (res) in
            if res {
                for date in dates.0 {

                    let notificationContent = UNMutableNotificationContent()
                    notificationContent.title = "Wake up"
                    notificationContent.body = "Jump in?"
                    
                    var myDateComponents = DateComponents()
                    let calendar = Calendar.current
                    
                    myDateComponents.hour = calendar.component(.hour, from: date)
                    myDateComponents.day = calendar.component(.day, from: date)
                    myDateComponents.minute = calendar.component(.minute, from: date)
                    
                    let trigger = UNCalendarNotificationTrigger(dateMatching: myDateComponents, repeats: dates.1)
                    let request = UNNotificationRequest(identifier: "UniqueID", content: notificationContent, trigger: trigger)
                    UNUserNotificationCenter.current().add(request, withCompletionHandler: { (error) in
                        if let error = error {
                            print(error)
                        }
                    })
                }
            }
        }
    }
    // MARK: - Button operation
    
    
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
        if sundayButton.isSelected {
            daysOfTheWeek.append(5)
        }
        else {
            let index = daysOfTheWeek.index(of: 5)
            daysOfTheWeek.remove(at: index!)
        }
    }
    @IBAction func fridayButtonPressed(_ sender: UIButton) {
        fridayButton.isSelected = !fridayButton.isSelected
        if sundayButton.isSelected {
            daysOfTheWeek.append(6)
        }
        else {
            let index = daysOfTheWeek.index(of: 6)
            daysOfTheWeek.remove(at: index!)
        }
    }
    @IBAction func saturdayButtonPressed(_ sender: UIButton) {
        saturdayButton.isSelected = !saturdayButton.isSelected
        if sundayButton.isSelected {
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
        let minuteString = String(time[0])
        let hourString = String(time[0])
        guard let minute = Int(minuteString), let hour = Int(hourString) else {
            fatalError()
        }
        var input: ([Date], Bool)
        input.0 = [Date]()
        input.1 = repeatSwitch.isOn
        
        for day in daysOfTheWeek {
            
            var newDate = DateComponents()
            newDate.weekday = day
            newDate.minute = minute
            newDate.hour = hour
            if let date = Calendar.current.date(from: newDate) {
                input.0.append(date)
            }
            
            
        }
        
        setActivity(dates: input)
        
    }
    
    
}







