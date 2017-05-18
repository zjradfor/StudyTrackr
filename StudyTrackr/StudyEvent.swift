//
//  StudyEvent.swift
//  StudyTrackr
//
//  Created by Emily Klosa on 2017-05-16.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit
class StudyEvent{
    var time:Int
    var subject:String
    var date:String
    init?(time:Int, subject:String, date:String){
        guard (time>=0)else{
            return nil
        }
        self.time = time
        self.subject = subject
        self.date = date
        
        
    }
    
}
