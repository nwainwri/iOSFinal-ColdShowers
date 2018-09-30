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
  @IBOutlet weak var activityCategoryTimeSlider: UISlider!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
