//
//  Day.swift
//  StudyTrackr
//
//  Created by Tristan Devos on 2017-05-02.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import Foundation

var days = [Day]()



class Day {
    var dayOfMonth: Int
    var weekDay: String
    var month: String
    var year: Int
    init () {
        dayOfMonth = 0
        weekDay = "Void"
        month = "Void"
        year = 0
    }
}
