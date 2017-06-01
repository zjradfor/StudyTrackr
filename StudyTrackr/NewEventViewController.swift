//
//  NewEventViewController.swift
//  StudyTrackr
//
//  Created by Tristan Devos on 2017-05-18.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class NewEventViewController: UIViewController {
    
    @IBOutlet weak var neweventtableView: UITableView!
    @IBOutlet weak var eventTitle: UILabel!
    @IBOutlet weak var currentEventTitle: UILabel!
    var eventFromSegue = 0
    var eventDayFromSegue = 0
    var cellCounter = 0
    var eventColour = UIColor.blue
    var eventMonthFromSegue = 0
    
    override func viewDidLoad() {
        print(eventMonthFromSegue)
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
        
        eventTitle.text = "Day: \(eventDayFromSegue)"
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
        //print("Event Colour: \(eventColour)")
        colourCell().setViewColour(colour: eventColour)
    }
    
    // MARK: - Navigation

     @IBAction func goBackToOneButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "unwindSegueToVC2", sender: self)
     }
    @IBAction func unwindToVC3(segue:UIStoryboardSegue) { }
    
    //@IBAction func colourPicked(segue:UIStoryboardSegue) { }
    
    @IBAction func colourPicked(sender:UIStoryboardSegue) {
        if let sourceViewController = sender.source as? EventColourPickerViewController {
            eventColour = sourceViewController.colour
        }
    }
    
    
    
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func getColour() -> UIColor{
        //print("Setting colour to: \(eventColour)")
        return eventColour
    }
    
    @IBAction func addEvent(_ sender: Any) {
        
        var add = 0
        var addMonth = 0
        var i = 0
        
        if leapYear == true {
            add = 1
        }

        if eventMonthFromSegue == 2 {
            addMonth = 31
        } else if eventMonthFromSegue == 3 {
            addMonth = 59
        } else if eventMonthFromSegue == 4 {
            addMonth = 90
        } else if eventMonthFromSegue == 5 {
            addMonth = 120
        } else if eventMonthFromSegue == 6 {
            addMonth = 151
        } else if eventMonthFromSegue == 7 {
            addMonth = 181
        } else if eventMonthFromSegue == 8 {
            addMonth = 212
        } else if eventMonthFromSegue == 9 {
            addMonth = 243
        } else if eventMonthFromSegue == 10 {
            addMonth = 273
        } else if eventMonthFromSegue == 11 {
            addMonth = 304
        } else if eventMonthFromSegue == 12 {
            addMonth = 334
        } else {
            addMonth = 0
        }
        i = eventDayFromSegue + addMonth + add
        DateInfoArr[i].events.insert(Event.init(), at: 0)
        DateInfoArr[i].events[0].type = currentEventTitle.text!
        DateInfoArr[i].events[0].colour = eventColour
    }

}

extension NewEventViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if cellCounter == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "subjectCell", for: indexPath)
            //print(cellCounter)
                    cellCounter += 1
            return cell
        }
        else if cellCounter == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "dpCell", for: indexPath)
            //print(cellCounter)
                    cellCounter += 1
            return cell
        }
        else if cellCounter == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "locationCell", for: indexPath)
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
            let cell = tableView.dequeueReusableCell(withIdentifier: "notesCell", for: indexPath)
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
        case 4: return 112
        default: return 0
        }
    }
    

}

extension NewEventViewController: UITableViewDelegate{
    
}

