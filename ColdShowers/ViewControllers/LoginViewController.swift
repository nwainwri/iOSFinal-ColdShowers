//
//  LoginViewController.swift
//  ColdShowers
//
//  Created by Kit Clark-O'Neil on 2018-09-20.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

import UIKit
import UserNotifications

import CoreData

class LoginViewController: UIViewController {
  
  // MARK: LoginView Properties
  @IBOutlet weak var usernameLabel: UILabel!
  @IBOutlet weak var usernameTextField: UITextField!
  @IBOutlet weak var passwordLabel: UILabel!
  @IBOutlet weak var passwordTextField: UITextField!
  @IBOutlet weak var loginButton: UIButton!
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
      
//      //MARK: Testing Core Data
//      let appDelegate = UIApplication.shared.delegate as! AppDelegate
//      let context = appDelegate.persistentContainer.viewContext
//
//      let testStrength = NSEntityDescription.insertNewObject(forEntityName: "Activities", into: context) as! Activities
//
//      testStrength.id = 0
//      testStrength.name = "Push Ups"
//      testStrength.areaBody = ["arms", "chest"]
//      testStrength.style = "strength"
//      testStrength.instructPhoto = ""
//
//      let testYoga = NSEntityDescription.insertNewObject(forEntityName: "Activities", into: context) as! Activities
//
//      testYoga.id = 0
//      testYoga.name = "Mountain Pose"
//      testYoga.areaBody = ["legs", "arms"]
//      testYoga.style = "yoga"
//      testYoga.instructPhoto = ""
//
//      let testMindful = NSEntityDescription.insertNewObject(forEntityName: "Activities", into: context) as! Activities
//
//      testMindful.id = 0
//      testMindful.name = "Be Still"
//      testMindful.areaBody = ["brain", "soul"]
//      testMindful.style = "mindful"
//      testMindful.instructPhoto = ""
//
//      appDelegate.saveContext()
      
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
