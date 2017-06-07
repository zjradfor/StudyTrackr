//
//  colourCell.swift
//  StudyTrackr
//
//  Created by Tristan Devos on 2017-05-26.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

/*protocol colourCell{
    
}*/

class colourCell: UITableViewCell{
    //var delegate: NewEventViewDelegate?
    @IBOutlet weak var colourButton: UIButton!
    @IBOutlet weak var colourView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
   /* func setViewColour(colour: UIColor){
        colourView.backgroundColor = colour
        print(colour)
    }*/
    

}
