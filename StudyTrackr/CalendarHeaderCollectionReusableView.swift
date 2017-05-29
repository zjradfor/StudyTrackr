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
    @IBAction func rightButton(_ sender: Any) {
     month += month
    }
    @IBAction func leftButton(_ sender: Any) {
     month -= month
    }
    
    
    
    }
