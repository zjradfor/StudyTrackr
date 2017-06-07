//
//  dpTableViewCell.swift
//  StudyTrackr
//
//  Created by Tristan Devos on 2017-05-26.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class dpTableViewCell: UITableViewCell {
    @IBOutlet var dpShowDate: UIDatePicker!
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBAction func pickingDate(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "h:mm a"
        timeLabel.text = "\(dateFormatter.string(from: dpShowDate.date))"
        NewEventViewController().setTime(time: timeLabel.text!)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    /*
    func getDate()->String{
        return self.timeLabel.text
    }*/

}
