//
//  PreferencesViewController.swift
//  ColdShowers
//
//  Created by Kit Clark-O'Neil on 2018-09-20.
//  Copyright © 2018 Kit Clark-O'Neil and Nathan Wainwright All rights reserved.
//

import UIKit

class PreferencesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, PreferencesTableViewCellDelegate {
  
  //MARK: PreferencesView Properties
  @IBOutlet weak var preferencesTableView: UITableView!
  @IBOutlet weak var doneButton: UIButton!
  
  let activityManager = ActivityListManager()
  
  let timeManager = ActivityTimeManager()
  
  //  var currentSection:Int = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
    preferencesTableView.delegate = self
    preferencesTableView.dataSource = self
    
    preferencesTableView.rowHeight = UITableViewAutomaticDimension
    preferencesTableView.estimatedRowHeight = 140
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // MARK: preferencesTableView functions
  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    switch section {
    case 0:
      return "Average Activity Intensity"
    case 1:
      return "Strength"
    case 2:
      return "Mindful"
    case 3:
      return "Yoga"
    default:
      return "OUT OF BOUNDS"
    }
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    //    return defaultSet.categories.count
    return 4
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    switch section {
    case 0:
      return 1
    case 1:
      return activityManager.strength.count
      
    case 2:
      return activityManager.mindful.count
      
    case 3:
      return activityManager.yoga.count
      
    default:
      return 0
    }
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return UITableViewAutomaticDimension
  }
  
  func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    return UITableViewAutomaticDimension
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = preferencesTableView.dequeueReusableCell(withIdentifier: "settingsCell", for: indexPath) as! ActivityPreferencesTableViewCell
    
    let cell2 = preferencesTableView.dequeueReusableCell(withIdentifier: "timeCell", for: indexPath) as! ActivityTimePreferenceTableViewCell
    
    cell.delegate = self // needed for UISwitch, do not remove
    
    switch indexPath.section {
    case 0:
      
      let nameLabel = "Average Intensity"
      
      
      cell2.activityCategoryNameLabel.text = "Average Activity Intensity"
      cell2.activityTimeSliderLabel.text = "\(timeManager.getTime(nameLabel))"
      cell2.activityCategoryTimeSlider.value = timeManager.getTime(nameLabel)

      return cell2
    case 1:
      cell.preferenceNameLabel.text = activityManager.strength[indexPath.row].name
      cell.preferenceSettingSwitch.isOn = activityManager.strength[indexPath.row].settings
      return cell
    case 2:
      cell.preferenceNameLabel.text = activityManager.mindful[indexPath.row].name
      cell.preferenceSettingSwitch.isOn = activityManager.mindful[indexPath.row].settings
      return cell
    case 3:
      cell.preferenceNameLabel.text = activityManager.yoga[indexPath.row].name
      cell.preferenceSettingSwitch.isOn = activityManager.yoga[indexPath.row].settings
      return cell
    default:
      fatalError("currectionSection Value out of bounds.")
    }
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
  @IBAction func doneButtonPressed(_ sender: UIButton) {
    dismiss(animated: true, completion: nil)
  }
  
  //MARK: Delegation Functions
  func didTapSwitch(_ sender: ActivityPreferencesTableViewCell) {
    guard let tappedIndexPath = preferencesTableView.indexPath(for: sender) else { return }
    
    switch tappedIndexPath.section {
    case 0:
      activityManager.strength[tappedIndexPath.row].settings = sender.preferenceSettingSwitch.isOn
      
    case 1:
      activityManager.mindful[tappedIndexPath.row].settings = sender.preferenceSettingSwitch.isOn
      
    case 2:
      activityManager.mindful[tappedIndexPath.row].settings = sender.preferenceSettingSwitch.isOn
      
    default:
      fatalError("why is this trying to do outside of sections")
    }
  }
}
