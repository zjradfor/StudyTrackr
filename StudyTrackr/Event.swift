//
//  Day.swift
//  StudyTrackr
//
//  Created by Owen Read on 2017-05-02.
//  Copyright © 2017 John Slomka. All rights reserved.
//


import foundation

class Event {
  var description: String
  var type: String
  var subject: String
  var dueDate: Day
  var isComplete: Bool
  var studyTime: Int
  var mark: Double
  init () {
    description = "Void"
    type = "Void"
    subject = "Void"
    isComplete = false
    studyTime = 0
    mark = 0.0
  }
}
