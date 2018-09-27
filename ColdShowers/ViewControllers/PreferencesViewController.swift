//
//  PreferencesViewController.swift
//  ColdShowers
//
//  Created by Kit Clark-O'Neil on 2018-09-20.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

import UIKit

class PreferencesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, PreferencesTableViewCellDelegate {
  
  
  let defaultSet = DefaultSet()
  var currectionSection:Int = 0
  
  //MARK: PreferencesView Properties
  @IBOutlet weak var preferencesTableView: UITableView!
  @IBOutlet weak var doneButton: UIButton!
  
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    //      defaultSet.activities[0]
    preferencesTableView.delegate = self
    preferencesTableView.dataSource = self
    
    
    
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // MARK: preferencesTableView functions
  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    //    if section == 0 {
    //      currectionSection = 0
    //      return "Strength"
    //    } else if section == 1 {
    //      currectionSection = 1
    //      return "Mindfull"
    //    } else {
    //      currectionSection = 2
    //      return "Yoga"
    //    }
//    return defaultSet.categories[section].rawValue
    return "Title"
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
//    return defaultSet.categories.count
    return 0
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    var currentCount = 0
//    for item in defaultSet.activities {
//      if item.category.rawValue == currectionSection {
//        currentCount += 1
//      }
//    }
    return currentCount
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = preferencesTableView.dequeueReusableCell(withIdentifier: "settingsCell", for: indexPath) as! PreferencesTableViewCell
    // MARK: NOT QUITE
//    let currentActivities = defaultSet.activities.filter{$0.category.rawValue == indexPath.section}
    //    for item in testArr {
    ////      cell.preferenceNameLabel.text = defaultSet.activities[indexPath.row].name
    ////      cell.preferenceSettingSwitch.isOn = defaultSet.activities[indexPath.row].settings
    ////      print("this one maybe: \(item.name)")
    //    }
    //    if defaultSet.activities[indexPath.row].category.rawValue == indexPath.section {
    //
    //      print("NAME: \(defaultSet.activities[indexPath.row].name)")
    //    }
    //      cell.preferenceNameLabel.text = defaultSet.activities[indexPath.row].name
    //      cell.preferenceSettingSwitch.isOn = defaultSet.activities[indexPath.row].settings
    cell.delegate = self
//    cell.preferenceNameLabel.text = currentActivities[indexPath.row].name
//    cell.preferenceSettingSwitch.isOn = currentActivities[indexPath.row].settings
//    cell.activityOriginalIndex = currentActivities[indexPath.row].originalIndex
////    print(cell.activityOriginalIndex)
    return cell
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
  func didTapSwitch(_ sender: PreferencesTableViewCell) {
    guard let tappedIndexPath = preferencesTableView.indexPath(for: sender) else { return }
//    print("Cell Tapped", sender, tappedIndexPath)
//    print("NAME: \(defaultSet.activities[sender.activityOriginalIndex].name) WAS: \(defaultSet.activities[sender.activityOriginalIndex].settings)")
    
//    sender.preferenceSettingSwitch.isOn != defaultSet.activities[tappedIndexPath.row].settings
//    if (defaultSet.activities[tappedIndexPath.row].settings == sender.preferenceSettingSwitch.isOn) {
//      defaultSet.activities[tappedIndexPath.row].settings != sender.preferenceSettingSwitch.isOn
//    }
    
//    defaultSet.activities[tappedIndexPath.row].category
//    var originalIndex = defaultSet.activities[tappedIndexPath.row].originalIndex
    
    
//    defaultSet.activities[sender.activityOriginalIndex].settings = sender.preferenceSettingSwitch.isOn
//
//    print("NAME: \(defaultSet.activities[sender.activityOriginalIndex].name) IS: \(defaultSet.activities[sender.activityOriginalIndex].settings)")
//
//    tappedIndexPath.row
//    tappedIndexPath.section
//    print("LOCATION: TEST BUTTON:\(sender.preferenceSettingSwitch.isOn)")
    
    
    // "Love" this item
    //    items[tappedIndexPath.row].love()
    
    
  }
}
