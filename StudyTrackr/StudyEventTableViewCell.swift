//
//  StudyEventTableViewCell.swift
//  StudyTrackr
//
//  Created by Emily Klosa on 2017-05-16.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class StudyEventTableViewCell: UITableViewCell {
    @IBOutlet weak var dateLabel: UILabel!

    @IBOutlet weak var studyTimeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
