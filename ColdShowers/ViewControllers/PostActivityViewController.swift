//
//  PostActivityViewController.swift
//  ColdShowers
//
//  Created by Kit Clark-O'Neil on 2018-09-20.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

import UIKit

class PostActivityViewController: UIViewController {
  
  //MARK: Post Actvity Properties
  @IBOutlet weak var intensityLabel: UILabel!
  @IBOutlet weak var intensityButtonLow: UIButton!
  @IBOutlet weak var intensityButtonMiddle: UIButton!
  @IBOutlet weak var intensityButtonHigh: UIButton!
  
  @IBOutlet weak var enjoymentLabel: UILabel!
  @IBOutlet weak var enjoymentButtonYes: UIButton!
  @IBOutlet weak var enjoymentButtonNo: UIButton!
  
  @IBOutlet weak var activityButtonFinish: UIButton!
  

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

}
