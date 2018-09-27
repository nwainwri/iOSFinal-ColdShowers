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
    preferencesTableView.delegate = self
    preferencesTableView.dataSource = self
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // MARK: preferencesTableView functions
  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return defaultSet.categories[section].rawValue
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return defaultSet.categories.count
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    var currentCount = 0
    for item in defaultSet.activities {
      if item.category.rawValue == currectionSection {
        currentCount += 1
      }
    }
    return currentCount
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = preferencesTableView.dequeueReusableCell(withIdentifier: "settingsCell", for: indexPath) as! PreferencesTableViewCell
    let currentActivities = defaultSet.activities.filter{$0.category.rawValue == indexPath.section}
    cell.delegate = self
    cell.preferenceNameLabel.text = currentActivities[indexPath.row].name
    cell.preferenceSettingSwitch.isOn = currentActivities[indexPath.row].settings
    cell.activityOriginalIndex = currentActivities[indexPath.row].originalIndex
    return cell
  }
  
  //MARK: Button Actions
  @IBAction func doneButtonPressed(_ sender: UIButton) {
    dismiss(animated: true, completion: nil)
  }
  
  //MARK: Delegation Functions
  func didTapSwitch(_ sender: PreferencesTableViewCell) {
    guard let tappedIndexPath = preferencesTableView.indexPath(for: sender) else { return }
    print("NAME: \(defaultSet.activities[sender.activityOriginalIndex].name) WAS: \(defaultSet.activities[sender.activityOriginalIndex].settings)")
    defaultSet.activities[sender.activityOriginalIndex].settings = sender.preferenceSettingSwitch.isOn
    print("NAME: \(defaultSet.activities[sender.activityOriginalIndex].name) IS: \(defaultSet.activities[sender.activityOriginalIndex].settings)")
  }
}
