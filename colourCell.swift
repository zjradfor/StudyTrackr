//
//  colourCell.swift
//  StudyTrackr
//
//  Created by Tristan Devos on 2017-05-26.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class colourCell: UITableViewCell {
    var colourHere = UIColor.yellow
    @IBOutlet weak var colourView: UIView!
    @IBOutlet weak var colourButton: UIButton!
    override func awakeFromNib() {
        //colourView.backgroundColor = NewEventViewController().getColour()
        //print("Colour Here: \(colourHere)")
        colourView.backgroundColor = colourHere
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setViewColour(colour: UIColor){
        colourHere = colour
        print("Setting Colour to:\(colourHere)")
    }

}
