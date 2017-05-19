//
//  StudyEvent.swift
//  StudyTrackr
//
//  Created by Emily Klosa on 2017-05-16.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit
class StudyEvent{
    var studyTime:Int
    var subject:String
    var date:String
    init?(studyTime:Int, subject:String, date:String){
        guard (studyTime>=0)else{
            return nil
        }
        self.studyTime = studyTime
        self.subject = subject
        self.date = date
        
        
    }
    
}
