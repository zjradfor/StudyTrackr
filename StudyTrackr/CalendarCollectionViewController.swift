//
//  CalendarCollectionViewController.swift
//  StudyTrackr
//
//  Created by Tristan Devos on 2017-05-01.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

//Temp variable
var tag = 1
var x:CGFloat = 0
var y:CGFloat = 0
private let reuseIdentifier = "Cell"
var days = [Day]()

class CalendarCollectionViewController: UICollectionViewController {
    
    
    override func viewDidLoad() {
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        // Get January first
        let date = Date()
        let calendar = Calendar.current
        let year = calendar.component(.year, from: date)
        var firstWeekday = calendar.firstWeekday
        var leapYear = false
        var add: Int
        if (leapYear == false) {
           add = 0
        } else {
            add = 1
        }
        //Initialize days
        for var i in 0...366 {
            //Fill Weekday
            days.append(Day.init())
            if (firstWeekday == 1) {
                days[i].weekDay = "Sunday"
            } else if (firstWeekday == 2) {
                days[i].weekDay = "Monday"
            } else if (firstWeekday == 3) {
                days[i].weekDay = "Tuesday"
            } else if (firstWeekday == 4) {
                days[i].weekDay = "Wednesday"
            } else if (firstWeekday == 5) {
                days[i].weekDay = "Thursday"
            } else if (firstWeekday == 6) {
                days[i].weekDay = "Friday"
            } else if (firstWeekday == 7) {
                days[i].weekDay = "Saturday"
            }
            if (firstWeekday < 7) {
                firstWeekday += 1
            } else {
                firstWeekday = 1
            }
            
            //Fill Month and Day
            if (i < 32) {
                days[i].month = "January"
                days[i].dayOfMonth = i
            } else if (i > 31 && i < (60 + add)) {              //Plus add part is to account for leap
                days[i].month = "February"
                days[i].dayOfMonth = i - 31
            } else if (i > (59 + add) && i < (91 + add)) {
                days[i].month = "March"
                days[i].dayOfMonth = i - 59
            } else if (i > (90 + add) && i < (121 + add)) {
                days[i].month = "April"
                days[i].dayOfMonth = i - 90
            } else if (i > (120 + add) && i < (152 + add)) {
                days[i].month = "May"
                days[i].dayOfMonth = i - 120
            } else if (i > (151 + add) && i < (182 + add)) {
                days[i].month = "June"
                days[i].dayOfMonth = i - 151
            } else if (i > (181 + add) && i < (213 + add)) {
                days[i].month = "July"
                days[i].dayOfMonth = i - 181
            } else if (i > (212 + add) && i < (244 + add)) {
                days[i].month = "August"
                days[i].dayOfMonth = i - 212
            } else if (i > (243 + add) && i < (274 + add)) {
                days[i].month = "September"
                days[i].dayOfMonth = i - 243
            } else if (i > (273 + add) && i < (305 + add)) {
                days[i].month = "October"
                days[i].dayOfMonth = i - 273
            } else if (i > (304 + add) && i < (335 + add)) {
                days[i].month = "November"
                days[i].dayOfMonth = i - 304
            } else {
                days[i].month = "December"
                days[i].dayOfMonth = i - 334
            }
            
            //Fill Year
            days[i].year = year
            
        }

        // Register cell classes
        
        self.collectionView!.register(CalendarCell.self, forCellWithReuseIdentifier: "Cell")
        self.collectionView!.register(CalendarHeaderCollectionReusableView.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "header")
        // Do any additional setup after loading the view.
        
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
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "CalendarHeaderCollectionReusableView",for: indexPath) as! CalendarHeaderCollectionReusableView
            let date = Date()
            let formatter = DateFormatter()
            formatter.dateStyle = .full
            formatter.timeStyle = .none
            headerView.dateHeader.text = "\(formatter.string(from: date))"
        return headerView
        default:
        //4
            assert(false, "Unexpected element kind")
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "day"){
            let vc = segue.destination as! Garbage
            vc.dayFromSegue = dayToSegue
        }
        else{
            print("Not working")
        }
    }
 
    // MARK: UICollectionViewDataSource
 
    //Vertical Cells
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    // Horizontal Cells
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 42
    }
    
    
    var selectedLabels = String()
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let screenSize = UIScreen.main.bounds
        let screenHeight = screenSize.height - 62 //- MainTabBarViewController.tabBarHeight
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CalendarCell
        cell.frame = CGRect(x: x * (screenSize.width / 7) + 2, y: (y * (screenHeight / 6)) + 65, width: (screenSize.width / 7) - 4, height: (screenHeight / 6) - 2)
        cell.backgroundColor = UIColor.white
        cell.textLabel.text = "\(tag)"
        tag += 1
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
    var dayToSegue:IndexPath = []
    override func collectionView(_ collectionView: UICollectionView,
                                 shouldSelectItemAt indexPath: IndexPath) -> Bool {
        print("tapped \(indexPath)")
        dayToSegue = indexPath
        self.performSegue(withIdentifier: "day", sender: self)
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

}
