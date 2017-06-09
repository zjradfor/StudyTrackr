//
//  dpTableViewCell.swift
//  StudyTrackr
//
//  Created by Tristan Devos on 2017-05-26.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

protocol TimeCellDelegate {
    func getCellTime(time: String)
}

class dpTableViewCell: UITableViewCell {
    @IBOutlet var dpShowDate: UIDatePicker!
    @IBOutlet weak var timeLabel: UILabel!
    
    var delegate: TimeCellDelegate?
    
    @IBAction func pickingDate(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "h:mm a"
        timeLabel.text = "\(dateFormatter.string(from: dpShowDate.date))"
        delegate?.getCellTime(time: dateFormatter.string(from: dpShowDate.date))
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }


}
