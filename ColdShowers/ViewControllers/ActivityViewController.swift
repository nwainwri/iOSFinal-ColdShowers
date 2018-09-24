//
//  ActivityViewController.swift
//  ColdShowers
//
//  Created by Kit Clark-O'Neil on 2018-09-20.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

import UIKit

class ActivityViewController: UIViewController {
  
  //MARK: ActivityView -- Timer Overlay Properties
  @IBOutlet weak var timerOverlayView: UIView!
  @IBOutlet weak var timerOverlaylabel: UILabel!
  @IBOutlet weak var timerOverlayButton: UIButton!
  
  //MARK: ActivityView Properties
  @IBOutlet weak var activityNameLabel: UILabel!
  @IBOutlet weak var estimatedTimeLabel: UILabel!
  @IBOutlet weak var estimatedTimeAmount: UILabel!
  @IBOutlet weak var activityInstructionImage: UIImageView!
  @IBOutlet weak var activityStartButton: UIButton!
  @IBOutlet weak var activityCancelButton: UIButton!
  
  //MARK: Varible Properties
  var currentActivity:Int = 0
  var activityList = Array<Activity>()
  
    override func viewDidLoad() {
        super.viewDidLoad()
      timerOverlayView.isHidden = true
      timerOverlayView.alpha = 0.0
      
//      let defaultSet = DefaultSet()
      
      let activityManager = ActivityListManager()
      
      activityList = activityManager.getNewList()
      
      activityNameLabel.text = activityList[currentActivity].name
      activityInstructionImage.image = activityList[currentActivity].photo
      
      estimatedTimeAmount.text = activityManager.generateTime()
      
      
      
//      need a worklist manager that will intake default data set; and generate a basic workout list.defaultSet
      

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
  
  //MARK: Button Actions
  
  @IBAction func activityStartButtonPressed(_ sender: UIButton) {
    UIView.animate(withDuration: 1.2, delay: 0.0, options: .curveEaseOut, animations: {
      self.timerOverlayView.alpha = 1.0
    }, completion: nil)
    timerOverlayView.isHidden = false
  }
  
  @IBAction func activityCancelButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
  }
  
  //MARK: does not animate at all?
  @IBAction func timerOverlayButtonPressed(_ sender: UIButton) {
    UIView.animate(withDuration: 1.2, delay: 0.0, options: .curveEaseIn, animations: {
      self.timerOverlayView.alpha = 0.0
      self.timerOverlayView.isHidden = true
    }, completion: nil)
    if currentActivity < (activityList.count - 1) {
      currentActivity += 1
      print(currentActivity)
      self.view.reloadInputViews()
      self.view.setNeedsDisplay()
      self.activityInstructionImage.reloadInputViews()
      self.activityInstructionImage.setNeedsDisplay()
      
    } else {
      performSegue(withIdentifier: "postActivitySegue", sender: self)
    }

  }
  

}
