//
//  PreferencesTableViewCell.swift
//  ColdShowers
//
//  Created by Nathan Wainwright on 2018-09-22.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

import UIKit

class PreferencesTableViewCell: UITableViewCell {
  
  @IBOutlet weak var preferenceNameLabel: UILabel!
  
  @IBOutlet weak var preferenceSettingSwitch: UISwitch!
  
  
  

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
