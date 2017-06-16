//
//  DeleteEventTableViewController.swift
//  StudyTrackr
//
//  Created by Tristan Devos on 2017-06-13.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit
import CoreData
class DeleteEventTableViewController: UITableViewController {
    var eventDayFromSegue = 0
    var eventMonthFromSegue = 0
    var eventYearFromSegue = 0
    var j = calendar.component(.year, from: date)
    var indexOfDay = 0
    var add = 0
    var cellCounter = 0
    var events: [Events] = []
    var days: [Days] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        cellCounter = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        j = calendar.component(.year, from: date)
        add = 0
        
        if j == calendar.component(.year, from: date) {
            j = 0
        } else {
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
            indexOfDay = 31 + eventDayFromSegue
        } else if eventMonthFromSegue == 3 {
            indexOfDay = 59 + add + eventDayFromSegue
        } else if eventMonthFromSegue == 4 {
            indexOfDay = 90 + add + eventDayFromSegue
        } else if eventMonthFromSegue == 5 {
            indexOfDay = 120 + add + eventDayFromSegue
        } else if eventMonthFromSegue == 6 {
            indexOfDay = 151 + add + eventDayFromSegue
        } else if eventMonthFromSegue == 7 {
            indexOfDay = 181 + add + eventDayFromSegue
        } else if eventMonthFromSegue == 8 {
            indexOfDay = 212 + add + eventDayFromSegue
        } else if eventMonthFromSegue == 9 {
            indexOfDay = 243 + add + eventDayFromSegue
        } else if eventMonthFromSegue == 10 {
            indexOfDay = 273 + add + eventDayFromSegue
        } else if eventMonthFromSegue == 11 {
            indexOfDay = 304 + add + eventDayFromSegue
        } else if eventMonthFromSegue == 12 {
            indexOfDay = 334 + add + eventDayFromSegue
        } else {
            indexOfDay = 0 + eventDayFromSegue
        }

        print("Number of rows \(DateInfoArr[j][indexOfDay].eventNumber)")
        return DateInfoArr[j][indexOfDay].eventNumber
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel!.text = "● \(DateInfoArr[j][indexOfDay].events[cellCounter].subject) \(DateInfoArr[j][indexOfDay].events[cellCounter].type)"
        
        let newLabel = NSMutableAttributedString(string: (cell.textLabel?.text)!)

        newLabel.addAttribute(NSForegroundColorAttributeName, value: DateInfoArr[j][indexOfDay].events[cellCounter].colour, range: NSRange(location:0,length:1))

        cell.textLabel?.attributedText! = newLabel
        
        cellCounter += 1
        return cell
    }
    
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    
    // Deleting Cells and removing from data
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            /*let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Events")
            let fetchRequest2 = NSFetchRequest<NSFetchRequestResult>(entityName: "Days")
            
            let result = try? context.fetch(fetchRequest)
            let  resultData = result as! [Events]
            let result2 = try? context.fetch(fetchRequest2)
            let resultData2 = result2 as! [Days]
            
            var g = 0
            for var i in 0...indexPath.row + 1 {
                if indexOfDay == temporaryDay[g] {
                    i += 1
                }
                g += 1
                if g == temporaryDay.count {
                    break
                }
            }
            if DateInfoArr[j][indexOfDay].eventNumber > 1 {
                g -= 1
            }
            
            context.delete(resultData[g])
            context.delete(resultData2[g])
            //temporaryDay.remove(at: g)
            
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            
            do {
                events = try context.fetch(Events.fetchRequest())
                days = try context.fetch(Days.fetchRequest())
            }
            catch{
                print ("Fetching Failed")
            }*/
            DateInfoArr[j][indexOfDay].events.remove(at: indexPath.row)
            DateInfoArr[j][indexOfDay].eventNumber -= 1
            if DateInfoArr[j][indexOfDay].eventNumber == 0 {
                DateInfoArr[j][indexOfDay].atLeastOneEvent = false
            }
            cellCounter = 0
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        tableView.reloadData()
    }
    

    // MARK: - Navigation

    @IBAction func goBackToEvents(_ sender: Any) {
        performSegue(withIdentifier: "unwindToEvents", sender: self)
    }

}
