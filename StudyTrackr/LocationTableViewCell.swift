//
//  LocationTableViewCell.swift
//  StudyTrackr
//
//  Created by John Slomka on 2017-06-01.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

protocol LocationCellDelegate {
    func getCellLocation(location: String)
}

class LocationTableViewCell: UITableViewCell {
    @IBOutlet weak var locationTextField: UITextField!
    
    var delegate: LocationCellDelegate?

    @IBAction func locationTextChange(_ sender: Any) {
        delegate?.getCellLocation(location: locationTextField.text!)
        
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
