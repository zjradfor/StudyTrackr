//
//  NotesTableViewCell.swift
//  StudyTrackr
//
//  Created by John Slomka on 2017-06-01.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

protocol NotesCellDelegate {
    func getCellNotes(notes: String)
}

class NotesTableViewCell: UITableViewCell {
    @IBOutlet weak var notesTextField: UITextField!
    
    var delegate: NotesCellDelegate?
    
    @IBAction func notesTextField(_ sender: Any) {
        delegate?.getCellNotes(notes: notesTextField.text!)
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
