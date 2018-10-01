//
//  PreferencesTableViewCell.swift
//  ColdShowers
//
//  Created by Nathan Wainwright on 2018-09-22.
//  Copyright © 2018 Kit Clark-O'Neil and Nathan Wainwright All rights reserved.
//

import UIKit

class ActivityPreferencesTableViewCell: UITableViewCell {
  
  @IBOutlet weak var preferenceNameLabel: UILabel!
  @IBOutlet weak var preferenceSettingSwitch: UISwitch!
  var activityOriginalIndex = 0
  
  weak var delegate: PreferencesTableViewCellDelegate?
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

  // MARK: Delegation Functions
  @IBAction func preferencesSettingSwitchAction(_ sender: UISwitch) {
    delegate?.didTapSwitch(self)
  }

}
