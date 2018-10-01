//
//  ActivityTimePreferenceTableViewCell.swift
//  ColdShowers
//
//  Created by Nathan Wainwright on 2018-09-30.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

import UIKit

class ActivityTimePreferenceTableViewCell: UITableViewCell {
  
  @IBOutlet weak var activityCategoryNameLabel: UILabel!
  @IBOutlet weak var activityTimeSliderLabel: UILabel!
  @IBOutlet weak var activityCategoryTimeSlider: UISlider!
  
  //to save output
  let defaults = UserDefaults.standard
  
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

  
  @IBAction func activityCategoryTimeSliderAction(_ sender: UISlider) {
    activityTimeSliderLabel.text = String(Int(activityCategoryTimeSlider.value))
    print(self.activityCategoryNameLabel.text!)
    
    defaults.set(Int(self.activityCategoryTimeSlider.value), forKey: "time\(self.activityCategoryNameLabel.text!)Value")
    
  }
  
  
  
  
  
  
}
