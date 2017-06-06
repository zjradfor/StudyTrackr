//
//  CalendarCollectionViewController.swift
//  StudyTrackr
//
//  Created by Tristan Devos on 2017-05-01.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

//Temp variables
let weekChar = ["S","M","T","W","T","F","S"]
var tag = 0
var weekTag = 0
var x:CGFloat = 0
var y:CGFloat = 0
private let reuseIdentifier = "Cell"
struct DateInfo {
    var day = Day.init()
    var events = [Event]()
    
}
var yearToShow = 0
var DateInfoArr = [[DateInfo]]()
var leapYear = false
var leapYear2 = false
var tileBuffer = 0
let calendar = Calendar.current
let date = Date()
var month = calendar.component(.month, from: date)
var year = calendar.component(.year, from: date)
var buttonIsPressedR = false
var buttonIsPressedL = false

class CalendarCollectionViewController: UICollectionViewController, CalendarHeaderDelegate {
    
    @IBOutlet var CalendarCollectionView: UICollectionView!
    var firstWeekDay = "Sunday"
    var currentTag = "0"
    
    override func viewDidLoad() {
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
                                    // Get January first
                                   //Get current calendar info
        var firstWeekday = calendar.firstWeekday
                                        //Determine if leap year
        if (year % 4 == 0) {
            if (year % 100 == 0) {
                if (year % 400 == 0) {
                    leapYear = true
                } else {
                    leapYear = false
                }
            } else {
                leapYear = true
            }
        } else {
            leapYear = false
        }
        
        if ((year + 1) % 4 == 0) {
            if ((year + 1) % 100 == 0) {
                if ((year + 1) % 400 == 0) {
                    leapYear2 = true
                } else {
                    leapYear2 = false
                }
            } else {
                leapYear2 = true
            }
        } else {
            leapYear2 = false
        }
        
        var add: Int
        var add2: Int                               //Leap year needs to add an extra day
        if (leapYear == false) {                    //See Month/Day initalization
           add = 0
            if leapYear2 == false {
                add2 = 0
            } else {
                add2 = 1
            }
        } else {
            add = 1
            add2 = 0
        }
        for var j in 0...1 {
            DateInfoArr.append([DateInfo()])            //Initialize days
        for var i in 0...365 + add + add2 {
            //Fill Weekday
            DateInfoArr[j].append(DateInfo())
            if (firstWeekday == 1) {
                DateInfoArr[j][i].day.weekDay = "Sunday"
            } else if (firstWeekday == 2) {
                DateInfoArr[j][i].day.weekDay = "Monday"
            } else if (firstWeekday == 3) {
                DateInfoArr[j][i].day.weekDay = "Tuesday"
            } else if (firstWeekday == 4) {
                DateInfoArr[j][i].day.weekDay = "Wednesday"
            } else if (firstWeekday == 5) {
                DateInfoArr[j][i].day.weekDay = "Thursday"
            } else if (firstWeekday == 6) {
                DateInfoArr[j][i].day.weekDay = "Friday"
            } else if (firstWeekday == 7) {
                DateInfoArr[j][i].day.weekDay = "Saturday"
            }
            if (firstWeekday < 7) {
                firstWeekday += 1
            } else {
                firstWeekday = 1
            }
            
            //Fill Month and Day
            if (i < 32) {
                DateInfoArr[j][i].day.month = 1
                DateInfoArr[j][i].day.dayOfMonth = i
            } else if (i > 31 && i < (60 + add)) {              //Plus add part is to account for leap
                DateInfoArr[j][i].day.month = 2
                DateInfoArr[j][i].day.dayOfMonth = i - 31
            } else if (i > (59 + add) && i < (91 + add)) {
                DateInfoArr[j][i].day.month = 3
                DateInfoArr[j][i].day.dayOfMonth = i - 59
            } else if (i > (90 + add) && i < (121 + add)) {
                DateInfoArr[j][i].day.month = 4
                DateInfoArr[j][i].day.dayOfMonth = i - 90
            } else if (i > (120 + add) && i < (152 + add)) {
                DateInfoArr[j][i].day.month = 5
                DateInfoArr[j][i].day.dayOfMonth = i - 120
            } else if (i > (151 + add) && i < (182 + add)) {
                DateInfoArr[j][i].day.month = 6
                DateInfoArr[j][i].day.dayOfMonth = i - 151
            } else if (i > (181 + add) && i < (213 + add)) {
                DateInfoArr[j][i].day.month = 7
                DateInfoArr[j][i].day.dayOfMonth = i - 181
            } else if (i > (212 + add) && i < (244 + add)) {
                DateInfoArr[j][i].day.month = 8
                DateInfoArr[j][i].day.dayOfMonth = i - 212
            } else if (i > (243 + add) && i < (274 + add)) {
                DateInfoArr[j][i].day.month = 9
                DateInfoArr[j][i].day.dayOfMonth = i - 243
            } else if (i > (273 + add) && i < (305 + add)) {
                DateInfoArr[j][i].day.month = 10
                DateInfoArr[j][i].day.dayOfMonth = i - 273
            } else if (i > (304 + add) && i < (335 + add)) {
                DateInfoArr[j][i].day.month = 11
                DateInfoArr[j][i].day.dayOfMonth = i - 304
            } else {
                DateInfoArr[j][i].day.month = 12
                DateInfoArr[j][i].day.dayOfMonth = i - 334
            }
            //Fill Year
            DateInfoArr[j][i].day.year = year
            i += 1
        }
            j += 1
            firstWeekday -= 1
            year += 1
        }
        // Register cell classes
        year -= 1
        self.collectionView!.register(CalendarCell.self, forCellWithReuseIdentifier: "Cell")
        self.collectionView!.register(CalendarHeaderCollectionReusableView.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "header")
        // Do any additional setup after loading the view.
       
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.CalendarCollectionView?.reloadData()
        self.collectionView?.reloadData()
        
        x = 0
        y = 0
        tag = 0
        tileBuffer = 0
        weekTag = 0
        
        
        var firstWeekDay = "Sunday"

        firstWeekDay = getFirstWeekDayOfMonth(leapYear: leapYear, days: DateInfoArr[yearToShow], month: month)
        
        if firstWeekDay == "Sunday" {
            tileBuffer = -5
        } else if firstWeekDay == "Monday" {
            tileBuffer = -6
        } else if firstWeekDay == "Tuesday" {
            tileBuffer = -7
        } else if firstWeekDay == "Wednesday" {
            tileBuffer = -8
        } else if firstWeekDay == "Thursday" {
            tileBuffer = -9
        } else if firstWeekDay == "Friday" {
            tileBuffer = -10
        } else {
            tileBuffer = -11
        }
    }
 
    
    //Header Class connection to UICollectionView
    
    override func collectionView(_ collectionView: UICollectionView,
                                 viewForSupplementaryElementOfKind kind: String,
                                 at indexPath: IndexPath) -> UICollectionReusableView {
        
        //1
        switch kind {
        //2
        case UICollectionElementKindSectionHeader:
        //3
        let headerLabel = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "CalendarHeaderCollectionReusableView",for: indexPath) as! CalendarHeaderCollectionReusableView
            headerLabel.delegate = self as! CalendarHeaderDelegate
        if month == 1 {
            headerLabel.dateHeader.text = "January"
        } else if month == 2 {
            headerLabel.dateHeader.text = "February"
        } else if month == 3 {
            headerLabel.dateHeader.text = "March"
        } else if month == 4 {
            headerLabel.dateHeader.text = "April"
        } else if month == 5 {
            headerLabel.dateHeader.text = "May"
        } else if month == 6 {
            headerLabel.dateHeader.text = "June"
        } else if month == 7 {
            headerLabel.dateHeader.text = "July"
        } else if month == 8 {
            headerLabel.dateHeader.text = "August"
        } else if month == 9 {
            headerLabel.dateHeader.text = "September"
        } else if month == 10 {
            headerLabel.dateHeader.text = "October"
        } else if month == 11 {
            headerLabel.dateHeader.text = "November"
        } else if month == 12 {
            headerLabel.dateHeader.text = "December"
        }
            headerLabel.yearHeader.text = "\(year)"
        
        return headerLabel
        default:
        //4
            assert(false, "Unexpected element kind")
        }
    }
    
    
    
    //FUNCTION TYOU ARE LOOKING FOR
    func updateCalendarCollectionView() {
        
        self.CalendarCollectionView?.reloadData()
        self.collectionView?.reloadData()

        
        x = 0
        y = 0
        tag = 0
        tileBuffer = 0
        weekTag = 0
        var firstWeekDay = "Sunday"
        
        firstWeekDay = getFirstWeekDayOfMonth(leapYear: leapYear, days: DateInfoArr[yearToShow], month: month)
        
        if firstWeekDay == "Sunday" {
            tileBuffer = -5
        } else if firstWeekDay == "Monday" {
            tileBuffer = -6
        } else if firstWeekDay == "Tuesday" {
            tileBuffer = -7
        } else if firstWeekDay == "Wednesday" {
            tileBuffer = -8
        } else if firstWeekDay == "Thursday" {
            tileBuffer = -9
        } else if firstWeekDay == "Friday" {
            tileBuffer = -10
        } else {
            tileBuffer = -11
        }
        
        
    }
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "day"){
            let vc = segue.destination as! EventsViewController
            vc.monthFromSegue = month
            vc.dayFromSegue = dayToSegue
            vc.yearFromSegue = year
        }
    }
 
        @IBAction func unwindToVC1(segue:UIStoryboardSegue) { }

    // MARK: UICollectionViewDataSource
    
    //Vertical Cells
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

        
    // Horizontal Cells
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 49
    }
    
    
    var selectedLabels = String()
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let screenSize = UIScreen.main.bounds
        let screenHeight = screenSize.height - (62 + 49 + 3) //Tab bar is 49, 3 for border
        let screenHeight2 = screenHeight - (screenHeight / 12) - 2
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CalendarCell
        if y == 0 {
            cell.frame = CGRect(x: x * (screenSize.width / 7) + 2, y: (y * (screenHeight / 6)) + 65, width: (screenSize.width / 7) - 4, height: (screenHeight / 12) - 2)
            cell.backgroundColor = UIColor.blue
            cell.textLabel.text = "\(weekChar[weekTag])"
            weekTag += 1
            cell.textLabel.textAlignment = .center
            cell.textLabel.font = UIFont.systemFont(ofSize: 20)
        }
        else{
        cell.frame = CGRect(x: x * (screenSize.width / 7) + 2, y: (y * (screenHeight2 / 6) - (screenHeight / 12) + 74), width: (screenSize.width / 7) - 4, height: (screenHeight2 / 6) - 2)
        
        //TAGS
        cell.textLabel.font = UIFont.systemFont(ofSize: UIFont.systemFontSize)
        cell.textLabel.textAlignment = .natural
        cell.backgroundColor = UIColor.white
            if tag != 0 && tag <= 31{
                cell.textLabel.text = "\(tag)"
            }
            else if( tag == 0 || tag > 31){
                cell.textLabel.text = ""
            }
        }
        
        
        if tileBuffer <= 0 {
            tileBuffer += 1
        } else {
            tag += 1
        }
        x += 1
        if x == 7{
            y += 1
            x = 0
        }
        return cell
    }
    
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */
    
    //Selected Cell
    var dayToSegue = 0
    override func collectionView(_ collectionView: UICollectionView,
                                 shouldSelectItemAt indexPath: IndexPath) -> Bool {
        //print("tapped \(indexPath)")
        dayToSegue = indexPath.row
        if (dayToSegue > 0){
        self.performSegue(withIdentifier: "day", sender: self)
        }
        return false
    }
    
    
    
    
    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */
    
    
    func getFirstWeekDayOfMonth(leapYear: Bool, days: [DateInfo], month: Int) -> String {
                var add = 0
        
                if leapYear == true {
                        add = 1
                    }
        
                if month == 1 {
                        firstWeekDay = days[0].day.getWeekDay()
                    } else if month == 2 {
                        firstWeekDay = days[31].day.getWeekDay()
                    } else if month == 3 {
                        firstWeekDay = days[59 + add].day.getWeekDay()
                    } else if month == 4 {
                        firstWeekDay = days[90 + add].day.getWeekDay()
                    } else if month == 5 {
                        firstWeekDay = days[120 + add].day.getWeekDay()
                    } else if month == 6 {
                        firstWeekDay = days[151 + add].day.getWeekDay()
                    } else if month == 7 {
                        firstWeekDay = days[181 + add].day.getWeekDay()
                    } else if month == 8 {
                        firstWeekDay = days[212 + add].day.getWeekDay()
                    } else if month == 9 {
                        firstWeekDay = days[243 + add].day.getWeekDay()
                    } else if month == 10 {
                        firstWeekDay = days[273 + add].day.getWeekDay()
                    } else if month == 11 {
                        firstWeekDay = days[304 + add].day.getWeekDay()
                    } else if month == 12 {
                        firstWeekDay = days[334 + add].day.getWeekDay()
                    }
                return firstWeekDay
            }
    
    

}
