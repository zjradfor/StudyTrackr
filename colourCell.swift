//
//  colourCell.swift
//  StudyTrackr
//
//  Created by Tristan Devos on 2017-05-26.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class colourCell: UITableViewCell {

    @IBOutlet weak var colourView: UIView!
    @IBOutlet weak var colourButton: UIButton!
    override func awakeFromNib() {
        //colourView.backgroundColor = NewEventViewController().getColour()
        
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setViewColour(colour: UIColor){
            print(colour)
        //colourView.backgroundColor = colour
    }

}
