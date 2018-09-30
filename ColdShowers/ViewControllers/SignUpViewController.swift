//
//  SignUpViewController.swift
//  ColdShowers
//
//  Created by Nathan Wainwright on 2018-09-22.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
  
  @IBOutlet weak var usernameLabel: UILabel!
  @IBOutlet weak var usernameTextField: UITextField!
  @IBOutlet weak var passwordLabel: UILabel!
  @IBOutlet weak var passwordTextField: UITextField!
  @IBOutlet weak var signUpButton: UIButton!
  
  let defaults = UserDefaults.standard
  
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
  
  // MARK: Button Actions
  @IBAction func signUpButtonPressed(_ sender: UIButton) {
    let username = usernameTextField.text
    let password = passwordTextField.text
    defaults.set(username, forKey: "Username")
    defaults.set(password, forKey: "Password")
    self.performSegue(withIdentifier: "SignUpSegue", sender: nil)
  }
}
