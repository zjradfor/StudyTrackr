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
    @IBOutlet weak var dateHeader: UILabel!
    
    var delegate: CalendarHeaderDelegate?
  
    
    
    
    
    @IBAction func leftButton(_ sender: UIButton) {
        if month > 1 {
            month -= 1
            print("Month should be lower \(month)")
            self.delegate?.updateCalendarCollectionView()

        }
    }
    
    
    
    
    
    
    @IBAction func rightButton(_ sender: UIButton) {
        if month < 12 {
            month += 1
            print("Month should be higher \(month)")
            self.delegate?.updateCalendarCollectionView()
        }
    }
    
    
    
    
    }
