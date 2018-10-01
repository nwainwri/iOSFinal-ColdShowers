//
//  HomeScreenViewController.swift
//  ColdShowers
//
//  Created by Kit Clark-O'Neil on 2018-09-20.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

import UIKit

class HomeScreenViewController: UIViewController {
  
  //MARK: HomeScreenView Properties
  @IBOutlet weak var homeScreenSettingsButton: UIButton!
  @IBOutlet weak var streakDaysLabel: UILabel!
  @IBOutlet weak var streakDaysNumberLabel: UILabel!
  @IBOutlet weak var setupAlarmButton: UIButton!
  @IBOutlet weak var workoutButton: UIButton!
  
  @IBOutlet weak var alarmScheduleButton: UIButton!
  
  let timeManager = ActivityTimeManager()
  
  let defaults = UserDefaults.standard
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    updateDash()
    

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
  
  // MARK: Button Actions
  @IBAction func preferencesButtonAction(_ sender: UIButton) {
    self.performSegue(withIdentifier: "PrefSegue", sender: nil)
  }
  
  @IBAction func setupScheduleButtonPressed(_ sender: UIButton) {
    self.performSegue(withIdentifier: "scheduleSegue", sender: nil)
  }
  
  @IBAction func setupWorkoutButtonAction(_ sender: UIButton) {
    self.performSegue(withIdentifier: "ActivitySegue", sender: nil)
  }
  
  @IBAction func alarmScheduleButtonPressed(_ sender: UIButton) {
    self.performSegue(withIdentifier: "alarmScheduleSegue", sender: nil)
  }
  
  
  //MARK: Unwind Func
  
  @IBAction func unwindToVC1(segue:UIStoryboardSegue) { }
  
  
  //MARK: Helper Functions
  func updateDash() {
    let currentDash = defaults.integer(forKey: "currentStreak")
    if currentDash > 0 {
      streakDaysNumberLabel.font = UIFont.boldSystemFont(ofSize: 55 )
    }
    let currentDashString = String(currentDash)
    streakDaysNumberLabel.text = currentDashString
  }
  
}
