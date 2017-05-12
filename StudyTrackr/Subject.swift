//
//  Subject.swift
//  StudyTrackr
//
//  Created by Zach Radford on 2017-05-02.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import Foundation
import UIKit

class Subject {
    var subjectName: String

    //var totalStudyTime: Double
   // var overallMark: Double
   // var red : CGFloat
   // var green : CGFloat
   // var blue : CGFloat
    //var colour: (red, green, blue)
    
    init(){
    self.subjectName = "subject"
   // self.overallMark = 0
   // self.red = 125/255
   // self.green = 125/255
   // self.blue = 125/255
   // self.totalStudyTime = 0
}
    init(subjectName: String){
        self.subjectName = subjectName
    }
    
    //overallMark()
    //addTime()

    func newSubject(subjectName:String){
        self.subjectName = subjectName
    }
    
}

