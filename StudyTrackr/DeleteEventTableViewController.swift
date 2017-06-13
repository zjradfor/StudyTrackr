//
//  DeleteEventTableViewController.swift
//  StudyTrackr
//
//  Created by Tristan Devos on 2017-06-13.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class DeleteEventTableViewController: UITableViewController {
    var eventDayFromSegue = 0
    var eventMonthFromSegue = 0
    var eventYearFromSegue = 0
    var j = calendar.component(.year, from: date)
    var indexOfDay = 0
    var add = 0
    var cellCounter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        cellCounter = 0

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        indexOfDay = 0
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

        
        return DateInfoArr[j][indexOfDay].eventNumber
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print()
        let cell = UITableViewCell()
        print("cell text: \(DateInfoArr[j][indexOfDay].events[cellCounter].subject)")
        cell.textLabel!.text = DateInfoArr[j][indexOfDay].events[cellCounter].subject
        cellCounter += 1
        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
            // ADD ARRAY DELETE-ING HERE
        }
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func goBackToEvents(_ sender: Any) {
        performSegue(withIdentifier: "unwindToEvents", sender: self)
    }

}
