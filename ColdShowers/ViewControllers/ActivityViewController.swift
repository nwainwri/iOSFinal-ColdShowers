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
  let hour = 0
  var minutes = 5

  var rootSeconds = 120
  var seconds = 120
  var timer = Timer()
  var isTimerRunning = false // used to ensure only one timer running at any given time
  
  let formatter = DateFormatter()
  var activityTotalTime = Date()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    timerOverlayView.isHidden = true
    timerOverlayView.alpha = 0.0
    timerOverlaylabel.text = timeString(time: TimeInterval(rootSeconds))
    
    activityList = activityManager.getNewList()
    estimatedTimeAmount.text = timeString(time: TimeInterval(seconds + seconds + seconds))
    activityCurrentTimerLabel.text = timeString(time: TimeInterval(seconds))
    
    MakeBorder.addTopBorder(inpView: activityInstructionImage, withColor: UIColor.offWhite)
    MakeBorder.addBottomBorder(inpView: activityInstructionImage, withColor: UIColor.offWhite)
    
    MakeBorder.addBottomBorder(inpView: timerOverlayView, withColor: UIColor.jetBlack)
    MakeBorder.addTopBorder(inpView: timerOverlayView, withColor: UIColor.jetBlack)
    
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
    UIView.animate(withDuration: 0.8, delay: 0.0, options: .curveEaseOut, animations: {
      self.timerOverlayView.alpha = 1.0
      self.activityStartButton.alpha = 0.0
      self.activityCancelButton.alpha = 0.0
    }, completion: nil)
    activityStartButton.isEnabled = false
    activityCancelButton.isEnabled = false
    activityStartButton.isHidden = true
    activityCancelButton.isHidden = true
    timerOverlayView.isHidden = false
    self.runTimer()
  }
  
  @IBAction func activityCancelButtonPressed(_ sender: UIButton) {
    dismiss(animated: true, completion: nil)
  }
  
  //MARK: does not animate at all?
  @IBAction func timerOverlayButtonPressed(_ sender: UIButton) {
//    UIView.animate(withDuration: 1.2, delay: 0.0, options: .curveEaseOut, animations: {
//      self.timerOverlayView.alpha = 0.0
//
//    }, completion: nil)
    
    UIView.animate(withDuration: 0.8, animations: {
      self.timerOverlayView.alpha = 0.0
      self.activityStartButton.alpha = 1.0
      self.activityCancelButton.alpha = 1.0
    }) { (true) in
      // runs this code once animation has finished; which includes the segue to the next screen if user has done all activities
      self.timerOverlayView.isHidden = true
      self.activityStartButton.isEnabled = true
      self.activityCancelButton.isEnabled = true
      self.activityStartButton.isHidden = false
      self.activityCancelButton.isHidden = false
      self.activityList[self.currentActivity].occurance += 1
      
      self.timer.invalidate()
      self.seconds = self.rootSeconds   //Here we manually enter the restarting point for the seconds, but it would be wiser to make this a variable or constant.
      self.timerOverlaylabel.text = self.timeString(time: TimeInterval(self.rootSeconds))
      
      if self.currentActivity < (self.activityList.count - 1) {
        self.currentActivity += 1
        self.loadData()
      } else {
        self.performSegue(withIdentifier: "postActivitySegue", sender: self)
      }
    }
  }

  //MARK: Load Data for Labels
  func loadData() {
    activityNameLabel.text = activityList[currentActivity].name
    activityInstructionImage.image = UIImage(named: activityList[currentActivity].photo!) 
  }
  
  //MARK: TIMER FUNCTIONS
  func runTimer() {
    timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(ActivityViewController.updateTimer)), userInfo: nil, repeats: true)
  }
  
  @objc func updateTimer() {
    seconds -= 1     //This will decrement(count down)the seconds.
    self.timerOverlaylabel.text = timeString(time: TimeInterval(seconds)) //This will update the label.
  }
  
  func timeString(time:TimeInterval) -> String {
    let hours = Int(time) / 3600
    let minutes = Int(time) / 60 % 60
    let seconds = Int(time) % 60
    let timeString = String(format: "%02d:%02d:%02d", hours, minutes, seconds)
    return timeString
  }
  
  
//  func generateTime(_ time: Int) -> String{
//    formatter.dateFormat = "HH:mm:ss"
//    activityTotalTime = formatter.date(from: "\(hour):\(minutes):\(seconds)")!
//    let finalTime = formatter.string(from: activityTotalTime)
//    //    print(activityTotalTime)
//    //    print(finalTime)
//    return finalTime
//  }
  
  
  
  
  
  
  
  
  
  
  
  
  
}
