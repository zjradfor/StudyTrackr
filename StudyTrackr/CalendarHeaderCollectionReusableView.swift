//
//  CalendarHeaderCollectionReusableView.swift
//  StudyTrackr
//
//  Created by John Slomka on 2017-05-03.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

//This is the Label being connected to the header class
class CalendarHeaderCollectionReusableView: UICollectionReusableView {
    
    @IBOutlet weak var dateHeader: UILabel!
    
    @IBAction func leftButton(_ sender: UIButton) {
        buttonIsPressedL = true
        //month -= month
    }
    @IBOutlet weak var leftButton: UIButton!
    @IBAction func rightButton(_ sender: UIButton) {
        buttonIsPressedR = true
        print("buttonActivated")
        //month += month
    }
    @IBOutlet weak var rightButton: UIButton!
    
    
    
    
    /*@IBAction func rightButton(_ sender: Any) {
     buttonIsPressedR = true
        print("buttonActivated")
        //month += month
    }
    @IBAction func leftButton(_ sender: Any) {
     buttonIsPressedL = true
        //month -= month
    }
    */
    
    
    }
