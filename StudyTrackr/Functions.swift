//
//  Functions.swift
//  StudyTrackr
//
//  Created by John Slomka on 2017-06-07.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import Foundation

func monthTranslator(intMonth: Int) -> String {
    
    if intMonth == 1 {
        return "January"
    } else if intMonth == 2 {
        return "February"
    } else if intMonth == 3 {
        return "March"
    } else if intMonth == 4 {
        return "April"
    } else if intMonth == 5 {
        return "May"
    } else if intMonth == 6 {
        return "June"
    } else if intMonth == 7 {
        return "July"
    } else if intMonth == 8 {
        return "August"
    } else if intMonth == 9 {
        return "September"
    } else if intMonth == 10 {
        return "October"
    } else if intMonth == 11 {
        return "November"
    } else if intMonth == 12 {
        return "December"
    }
    return "broken"
}

func getNumberOfDaysInMonth(intMonth: Int, leapYear: Bool) -> Int {
    
    if intMonth == 1 {
        return 31
    } else if intMonth == 2 {
        if leapYear == false {
            return 28
        } else {
            return 29
        }
    } else if intMonth == 3 {
        return 31
    } else if intMonth == 4 {
        return 30
    } else if intMonth == 5 {
        return 31
    } else if intMonth == 6 {
        return 30
    } else if intMonth == 7 {
        return 31
    } else if intMonth == 8 {
        return 31
    } else if intMonth == 9 {
        return 30
    } else if intMonth == 10 {
        return 31
    } else if intMonth == 11 {
        return 30
    } else {
        return 31
    }
}




