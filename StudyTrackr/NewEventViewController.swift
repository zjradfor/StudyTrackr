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
    
    override func viewDidLoad() {
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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

     @IBAction func goBackToOneButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "unwindSegueToVC2", sender: self)
     }
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension NewEventViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if cellCounter == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "subjectCell", for: indexPath)
                    cellCounter += 1
            return cell
        }
        else if cellCounter == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "timeCell", for: indexPath)
                    cellCounter += 1
            return cell
        }
        else if cellCounter == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "locationCell", for: indexPath)
                    cellCounter += 1
            return cell
        }
        else if cellCounter == 3{
            let cell = tableView.dequeueReusableCell(withIdentifier: "subjectCell", for: indexPath)
                    cellCounter += 1
            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "subjectCell", for: indexPath)
                    cellCounter += 1
            return cell
        }

    }

}


extension NewEventViewController: UITableViewDelegate{
    
    /*
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
 //       eventToSegue = indexPath.row
        self.performSegue(withIdentifier: "event", sender: self)
        print ("tappedE \(indexPath.row)")
    }
 */
}


