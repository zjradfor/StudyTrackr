//
//  Event.swift
//  StudyTrackr Final Project
//
//  Created by ICS 4UI, Spring 2017.
//  Copyright © 2017 EDSS. All rights reserved.
//

import Foundation
import UIKit

class Event {
    var type: String
    var subject: String
    var location: String
    var notes: String
    var dueDate: Day
    var isComplete: Bool
    var studyTime: Int
    var mark: Double
    var colour: UIColor
    var time: String
    init () {
        type = "Void"
        subject = "Void"
        location = "Void"
        notes = "Void"
        dueDate = Day()
        isComplete = false
        studyTime = 0
        mark = 0.0
        colour = UIColor.white
        time = "Void"
    }
}
