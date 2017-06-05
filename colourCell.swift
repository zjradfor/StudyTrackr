//
//  colourCell.swift
//  StudyTrackr
//
//  Created by Tristan Devos on 2017-05-26.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class colourCell: UITableViewCell {
    var colourHere: UIColor?
    @IBOutlet weak var colourView: UIView!
    @IBOutlet weak var colourButton: UIButton!
    /*
    init(colourHere: UIColor) {
        super.init()
        self.colourHere = colourHere
    }
    init(){
        
        self.colourHere = UIColor.blue
    }
    */

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        //colourView.backgroundColor = NewEventViewController().getColour()
        print("Colour Here: \(colourHere)")
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
