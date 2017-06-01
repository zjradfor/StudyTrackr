//
//  Event.swift
//  StudyTrackr
//
//  Created by Owen Read on 2017-05-02.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import Foundation
import UIKit

class Event {
    var description: String
    var type: String
    var subject: String
    var dueDate: Day
    var isComplete: Bool
    var studyTime: Int
    var mark: Double
    var colour: UIColor
    init () {
        description = "Void"
        type = "Void"
        subject = "Void"
        dueDate = Day()
        isComplete = false
        studyTime = 0
        mark = 0.0
        colour = UIColor.white
    }
}
