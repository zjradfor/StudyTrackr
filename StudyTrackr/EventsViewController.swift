//
//  EventsViewController.swift
//  StudyTrackr
//
//  Created by John Slomka on 2017-05-12.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class EventsViewController: UIViewController {
    
    @IBOutlet weak var Header: UILabel!
    @IBOutlet weak var showEventsField: UITextView!
    
    var eventTextCounter = 0 // for cylcing through event labels
    let eventText = ["Test","Assignment","Homework","Event","Other"]
    var dayFromSegue = 0
    var monthFromSegue = 0
    var eventToSegue = 0
    var yearFromSegue = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        eventTextCounter = 0
        var indexOfDay = 0
        var j = 0
        var add = 0
        if yearFromSegue == calendar.component(.year, from: date) + 1 {
            j = 1
        }
        
        if leapYear == true {
            if yearFromSegue == calendar.component(.year, from: date) {
                add = 1
            } else if leapYear2 == true {
                if yearFromSegue == calendar.component(.year, from: date) + 1 {
                    add = 1
                }
            }
        }
        
        if monthFromSegue == 2 {
            indexOfDay = 31 + dayFromSegue
        } else if monthFromSegue == 3 {
            indexOfDay = 59 + add + dayFromSegue
        } else if monthFromSegue == 4 {
            indexOfDay = 90 + add + dayFromSegue
        } else if monthFromSegue == 5 {
            indexOfDay = 120 + add + dayFromSegue
        } else if monthFromSegue == 6 {
            indexOfDay = 151 + add + dayFromSegue
        } else if monthFromSegue == 7 {
            indexOfDay = 181 + add + dayFromSegue
        } else if monthFromSegue == 8 {
            indexOfDay = 212 + add + dayFromSegue
        } else if monthFromSegue == 9 {
            indexOfDay = 243 + add + dayFromSegue
        } else if monthFromSegue == 10 {
            indexOfDay = 273 + add + dayFromSegue
        } else if monthFromSegue == 11 {
            indexOfDay = 304 + add + dayFromSegue
        } else if monthFromSegue == 12 {
            indexOfDay = 334 + add + dayFromSegue
        } else {
            indexOfDay = 0 + dayFromSegue
        }
        automaticallyAdjustsScrollViewInsets = false
        
        if DateInfoArr[j][indexOfDay].atLeastOneEvent == true {
            showEventsField.text! += "\n"
            for var i in 0...DateInfoArr[j][indexOfDay].eventNumber - 1 {
                showEventsField.text! += "\n\(DateInfoArr[j][indexOfDay].events[i].subject)\(DateInfoArr[j][indexOfDay].events[i].type)\n\tLocation: \(DateInfoArr[j][indexOfDay].events[i].location)\n\tTime: \(DateInfoArr[j][indexOfDay].events[i].time)\nNotes: \(DateInfoArr[j][indexOfDay].events[i].notes)\n"
                i += 1
            }
        }
        
        //Getting current date
        Header.text = "\(monthTranslator(intMonth: monthFromSegue)) \(dayFromSegue)"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
       // self.TableView!.register(TableCell.self, forCellWithReuseIdentifier: "tableCell")
    }
    
    // MARK: - Navigation
    
     @IBAction func unwindToVC1(_ sender: Any) {
        performSegue(withIdentifier: "unwindSegueToVC2", sender: self)
     }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "event"){
            let vc = segue.destination as! NewEventViewController
            vc.eventFromSegue = eventToSegue
            vc.eventDayFromSegue = dayFromSegue
            vc.eventMonthFromSegue = monthFromSegue
            vc.eventYearFromSegue = yearFromSegue
        }
        if (segue.identifier == "deleteEvent"){
            let navVC = segue.destination as? UINavigationController
            let tableVC = navVC?.viewControllers.first as! DeleteEventTableViewController
            tableVC.eventDayFromSegue = dayFromSegue
            tableVC.eventMonthFromSegue = monthFromSegue
            tableVC.eventYearFromSegue = yearFromSegue
        }
    }
    @IBAction func unwindToVC2(segue:UIStoryboardSegue) { }
    @IBAction func unwindToEvents(segue:UIStoryboardSegue) { }
    @IBOutlet weak var ShowEventsTable: UITableView!
    
}

extension EventsViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EventsCell", for: indexPath)
        if eventTextCounter == 0{
            cell.textLabel?.text = "Test"
        }
        else if eventTextCounter == 1{
            cell.textLabel?.text = "Assignment"
        }
        else if eventTextCounter == 2{
            cell.textLabel?.text = "Homework"
        }
        else if eventTextCounter == 3{
            cell.textLabel?.text = "Event"
        }
        else if eventTextCounter == 4{
            cell.textLabel?.text = "Other"
        }
        else{
            cell.textLabel?.text = ""
        }
        eventTextCounter += 1
        return cell
    }
    
    
    
    //Selected Cell
    //var eventToSegue:IndexPath = []
    
    /*
    tableview
    override func tableView(_ tableView: UITableView,
                                 shouldSelectItemAt indexPath: IndexPath) -> Bool {
        dayToSegue = indexPath
        self.performSegue(withIdentifier: "day", sender: self)
        return false
    }*/
}
extension EventsViewController: UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        eventToSegue = indexPath.row
        self.performSegue(withIdentifier: "event", sender: self)
    }
}


