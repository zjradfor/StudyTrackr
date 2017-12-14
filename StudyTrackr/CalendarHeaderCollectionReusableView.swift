//
//  CalendarHeaderCollectionReusableView.swift
//  StudyTrackr
//
//  Created by John Slomka on 2017-05-03.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit
var stopR = false
var stopL = false
protocol CalendarHeaderDelegate {
    func updateCalendarCollectionView()
}
//This is the Label being connected to the header class
class CalendarHeaderCollectionReusableView: UICollectionReusableView {
    
    var delegate: CalendarHeaderDelegate?
    @IBOutlet weak var dateHeader: UILabel!
    
    
    
    
    
    @IBAction func leftButton(_ sender: UIButton) {
            month -= 1
        print("Month should be lower \(month)")
        self.delegate?.updateCalendarCollectionView()
        
        
        
        
    }
    @IBOutlet weak var leftButton: UIButton!
    
    
    
    
    
    
    @IBAction func rightButton(_ sender: UIButton) {
        month += 1
        print("Month should be higher \(month)")
        self.delegate?.updateCalendarCollectionView()
        
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
