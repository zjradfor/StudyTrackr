//
//  CalendarHeaderCollectionReusableView.swift
//  StudyTrackr Final Project
//
//  Created by ICS 4UI, Spring 2017.
//  Copyright © 2017 EDSS. All rights reserved.
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
            self.delegate?.updateCalendarCollectionView()
        } else {
            if year == calendar.component(.year, from: date) + 1 {
                month = 12
                year -= 1
                yearToShow = 0
                self.delegate?.updateCalendarCollectionView()
            }
        }
    }
    
    @IBAction func rightButton(_ sender: UIButton) {
        if month < 12 {
            month += 1
            self.delegate?.updateCalendarCollectionView()
        } else {
            if year == calendar.component(.year, from: date) {
                month = 1
                year += 1
                yearToShow = 1
                self.delegate?.updateCalendarCollectionView()
            }
        }
    }
    
    
    
    
    }
