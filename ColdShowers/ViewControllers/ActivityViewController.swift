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
  @IBOutlet weak var activityCurrentTimerLabel: UILabel!
  
  //MARK: Varible Properties
  var currentActivity:Int = 0
  var activityList = Array<CoreActivity>()
  
  let activityManager = ActivityListManager()
  var minutes = 5
  var timer = Timer()
  var isTimerRunning = false // used to ensure only one timer running at any given time
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    timerOverlayView.isHidden = true
    timerOverlayView.alpha = 0.0
    activityList = activityManager.getNewList()
    loadData()
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
    
    activityList[currentActivity].occurance += 1
    
    if currentActivity < (activityList.count - 1) {
      currentActivity += 1
      loadData()
    } else {
      performSegue(withIdentifier: "postActivitySegue", sender: self)
    }
  }

  //MARK: Load Data for Labels
  func loadData() {
    activityNameLabel.text = activityList[currentActivity].name
    activityInstructionImage.image = UIImage(named: activityList[currentActivity].photo!) 
    estimatedTimeAmount.text = activityManager.generateTime()
  }
  
}
