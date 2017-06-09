//
//  SubjectTableViewCell.swift
//  StudyTrackr
//
//  Created by John Slomka on 2017-06-01.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

protocol SubjectCellDelegate {
    func getCellSubject(subject: String)
}

class SubjectTableViewCell: UITableViewCell {
    @IBOutlet weak var subjectTextField: UITextField!
    
    var delegate: SubjectCellDelegate?
    
    @IBAction func subjectTextChange(_ sender: Any) {
    delegate?.getCellSubject(subject: subjectTextField.text!)
        
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
