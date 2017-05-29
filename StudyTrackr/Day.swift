//
//  Day.swift
//  StudyTrackr
//
//  Created by Tristan Devos on 2017-05-02.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import Foundation

class Day {
    var dayOfMonth: Int
    var weekDay: String
    var month: Int
    var year: Int
    init () {
        dayOfMonth = 0
        weekDay = "Void"
        month = 0
        year = 0
    }
    func getWeekDay() -> String {
        return weekDay
    }
}
