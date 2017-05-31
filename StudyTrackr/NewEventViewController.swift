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
    @IBOutlet weak var colourView: UIView!
    @IBOutlet weak var currentEventTitle: UILabel!
    @IBOutlet weak var colourButton: UIButton!
    var eventFromSegue = 0
    var eventDayFromSegue = 0
    var cellCounter = 0
    var eventColour = UIColor.green
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("What am i now? : \(eventColour)")
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
    }
    
    // MARK: - Navigation

     @IBAction func goBackToOneButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "unwindSegueToVC2", sender: self)
     }
    @IBAction func unwindToVC3(segue:UIStoryboardSegue) { }

    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func getColour() -> UIColor{
        print("Setting: \(eventColour)")
        return eventColour
    }
    
    @IBAction func addEvent(_ sender: Any) {
        DateInfoArr[].events.append(Event.init())
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

