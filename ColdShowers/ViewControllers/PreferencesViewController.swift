//
//  PreferencesViewController.swift
//  ColdShowers
//
//  Created by Kit Clark-O'Neil on 2018-09-20.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

import UIKit

class PreferencesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  let defaultSet = DefaultSet()

  

  //MARK: PreferencesView Properties
  @IBOutlet weak var preferencesTableView: UITableView!
  
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
    
    // MARK: NEEDS TO BE DYNAMIC
    if section == 0 {
      return "Strength"
    } else if section == 1 {
      return "Mindfull"
    } else{
      return "Yoga"
    }
//    return "DEFAULT TITLE"
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 3
  }
  
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return defaultSet.activities.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = preferencesTableView.dequeueReusableCell(withIdentifier: "settingsCell", for: indexPath) as! PreferencesTableViewCell
    // MARK: NOT QUITE
    if defaultSet.activities[indexPath.row].category == .mindfull {
      cell.preferenceNameLabel.text = defaultSet.activities[indexPath.row].name
      cell.preferenceSettingSwitch.isOn = defaultSet.activities[indexPath.row].settings
    }
   
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

}
