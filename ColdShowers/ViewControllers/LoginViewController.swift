//
//  LoginViewController.swift
//  ColdShowers
//
//  Created by Kit Clark-O'Neil on 2018-09-20.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

import UIKit
import UserNotifications
class LoginViewController: UIViewController {
  
  // MARK: LoginView Properties
  @IBOutlet weak var usernameLabel: UILabel!
  @IBOutlet weak var usernameTextField: UITextField!
  @IBOutlet weak var passwordLabel: UILabel!
  @IBOutlet weak var passwordTextField: UITextField!
  @IBOutlet weak var loginButton: UIButton!
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
      
      let defaultSet = DefaultSet()
      
      defaultSet.activities.count
      
      print(defaultSet.activities)
      
      let firstOne = defaultSet.activities[0]
      print(firstOne.name)
      print(firstOne.areaOfBody)
      print(firstOne.settings)
      print(firstOne.category)
      
      


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

}
