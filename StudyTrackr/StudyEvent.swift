//
//  StudyEvent.swift
//  StudyTrackr Final Project
//
//  Created by ICS 4UI, Spring 2017.
//  Copyright © 2017 EDSS. All rights reserved.
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
