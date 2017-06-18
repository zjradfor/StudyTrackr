//
//  Day.swift
//  StudyTrackr Final Project
//
//  Created by ICS 4UI, Spring 2017.
//  Copyright © 2017 EDSS. All rights reserved.
//


import Foundation

class Day {
    var dayOfMonth: Int
    var dayOfYear: Int
    var weekDay: String
    var month: Int
    var year: Int
    init () {
        dayOfMonth = 0
        weekDay = "Void"
        month = 0
        year = 0
        dayOfYear = 0
    }
    func getWeekDay() -> String {
        return weekDay
    }
}
