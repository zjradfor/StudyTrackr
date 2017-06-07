//
//  NewEventViewController.swift
//  StudyTrackr
//
//  Created by Tristan Devos on 2017-05-18.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class NewEventViewController: UIViewController, LocationCellDelegate, TimeCellDelegate, SubjectCellDelegate, NotesCellDelegate {
    
    @IBOutlet weak var colourView: UIView!
    @IBOutlet weak var neweventtableView: UITableView!
    @IBOutlet weak var eventTitle: UILabel!
    @IBOutlet weak var currentEventTitle: UILabel!
    var eventFromSegue = 0
    var eventDayFromSegue = 0
    var eventYearFromSegue = 0
    var cellCounter = 0
    var eventColour = UIColor.blue
    var eventMonthFromSegue = 0
    var eventSubject = "none"
    var eventLocation = "none"
    var eventNotes = "none"
    var eventTime = "none"
    
    override func viewDidLoad() {
        print(eventYearFromSegue)
        super.viewDidLoad()
        if eventFromSegue == 0{
            currentEventTitle.text = "Test"
        }
        else if eventFromSegue == 1{
            currentEventTitle.text = "Assignment"
        }
        else if eventFromSegue == 2{
            currentEventTitle.text = "Homework"
        }
        else if eventFromSegue == 3{
            currentEventTitle.text = "Event"
        }
        else if eventFromSegue == 4{
            currentEventTitle.text = "Other"
        }
        
        eventTitle.text = "\(monthTranslator(intMonth: eventMonthFromSegue)) \(eventDayFromSegue)"
        // Do any additional setup after loading the view.
        cellCounter = 0
        //colourButton.setTitle(eventColour, for: any)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        cellCounter = 0
    }
    
    // MARK: - Navigation

     @IBAction func goBackToOneButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "unwindSegueToVC2", sender: self)
     }
    @IBAction func unwindToVC3(segue:UIStoryboardSegue) { }
    
    
    @IBAction func colourPicked(sender: UIStoryboardSegue) {
        if let sourceViewController = sender.source as? EventColourPickerViewController {
            eventColour = sourceViewController.colour
            colourView.backgroundColor = eventColour
        }
    }
    // Getters and setters for data storage
    
    func getCellSubject(subject: String) {
        eventSubject = subject
    }
    
    func getCellLocation(location: String) {
        eventLocation = location
    }
    
    func getCellNotes(notes: String) {
        eventNotes = notes
    }
    
    func getCellTime(time: String) {
        eventTime = time
    }
    
    // Data Storage
    
    @IBAction func addEvent(_ sender: Any) {
        
        var add = 0
        var addMonth = 0
        var i = 0
        var j = 0
        
        if eventYearFromSegue == calendar.component(.year, from: date) + 1 {
            j = 1
        }
        
        if eventYearFromSegue == calendar.component(.year, from: date) + 1 {
            j = 1
        }
        
        if leapYear == true {
            if eventYearFromSegue == calendar.component(.year, from: date) {
                add = 1
            } else if leapYear2 == true {
                if eventYearFromSegue == calendar.component(.year, from: date) + 1 {
                    add = 1
                }
            }
        }
        
        if eventMonthFromSegue == 2 {
            addMonth = 31
        } else if eventMonthFromSegue == 3 {
            addMonth = 59 + add
        } else if eventMonthFromSegue == 4 {
            addMonth = 90 + add
        } else if eventMonthFromSegue == 5 {
            addMonth = 120 + add
        } else if eventMonthFromSegue == 6 {
            addMonth = 151 + add
        } else if eventMonthFromSegue == 7 {
            addMonth = 181 + add
        } else if eventMonthFromSegue == 8 {
            addMonth = 212 + add
        } else if eventMonthFromSegue == 9 {
            addMonth = 243 + add
        } else if eventMonthFromSegue == 10 {
            addMonth = 273 + add
        } else if eventMonthFromSegue == 11 {
            addMonth = 304 + add
        } else if eventMonthFromSegue == 12 {
            addMonth = 334 + add
        } else {
            addMonth = 0
        }
        
        i = eventDayFromSegue + addMonth
        
        DateInfoArr[j][i].events.insert(Event.init(), at: 0)
        DateInfoArr[j][i].events[0].type = currentEventTitle.text!
        DateInfoArr[j][i].events[0].colour = eventColour
        //Storing subject
        DateInfoArr[j][i].events[0].subject = eventSubject
        //Storing location
        DateInfoArr[j][i].events[0].location = eventLocation
        //Storing notes
        DateInfoArr[j][i].events[0].notes = eventNotes
        
        print(DateInfoArr[j][i].day.weekDay)
        print(DateInfoArr[j][i].day.dayOfMonth)
    }

}

extension NewEventViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if cellCounter == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "subjectCell", for: indexPath) as! SubjectTableViewCell
            cell.delegate = self
            //print(cellCounter)
                    cellCounter += 1
            return cell
        }
        else if cellCounter == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "dpCell", for: indexPath) as! dpTableViewCell
            cell.delegate = self
            //print(cellCounter)
                    cellCounter += 1
            return cell
        }
        else if cellCounter == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "locationCell", for: indexPath) as! LocationTableViewCell
            cell.delegate = self
            //print(cellCounter)
                    cellCounter += 1
            return cell
        }
        else if cellCounter == 3{
            let cell = tableView.dequeueReusableCell(withIdentifier: "colourCell", for: indexPath)
            //print(cellCounter)
                    cellCounter += 1
            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "notesCell", for: indexPath) as! NotesTableViewCell
            cell.delegate = self
            //print(cellCounter)
                    cellCounter += 1
            return cell
        }

    }

    //func tableView
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let row = indexPath.row
        switch row {
        case 0: return 44
        case 1: return 245
        case 2...3: return 44
        case 4: return 165
        default: return 0
        }
    }
    

}

extension NewEventViewController: UITableViewDelegate{
    
}

