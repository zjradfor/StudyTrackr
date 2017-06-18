//
//  studyEventTableViewCell.swift
//  StudyTrackr Final Project
//
//  Created by ICS 4UI, Spring 2017.
//  Copyright © 2017 EDSS. All rights reserved.
//

import UIKit

class studyEventTableViewCell: UITableViewCell {
    
    @IBOutlet weak var dateStudied: UILabel!
   
    @IBOutlet weak var timeStudied: UILabel!
    
    @IBOutlet weak var subjectStudied: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
