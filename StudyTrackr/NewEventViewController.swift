//
//  NewEventViewController.swift
//  StudyTrackr
//
//  Created by Tristan Devos on 2017-05-18.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class NewEventViewController: UIViewController {
    @IBOutlet weak var eventTitle: UILabel!
    @IBOutlet weak var eventChosen: UILabel!
    var eventFromSegue = 0
    var eventDayFromSegue = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        eventTitle.text = "Day: \(eventDayFromSegue)"
        if eventFromSegue == 0{
            eventChosen.text = "Test"
        }
        else if eventFromSegue == 1{
            eventChosen.text = "Assignment"
        }
        else if eventFromSegue == 2{
            eventChosen.text = "Homework"
        }
        else if eventFromSegue == 3{
            eventChosen.text = "Event"
        }
        else if eventFromSegue == 4{
            eventChosen.text = "Other"
        }
        // Do any additional setup after loading the view.
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
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "subjectViewCell", for: indexPath)
            //set the data here
            return cell
        }
        else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "subjectViewCell", for: indexPath)
            //set the data here
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "subjectViewCell", for: indexPath)
            //set the data here
            return cell
        }
    }


}

//Selecting Table cell
/*
extension NewEventViewController: UITableViewDelegate{
    
 
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        eventToSegue = indexPath.row
        self.performSegue(withIdentifier: "event", sender: self)
        print ("tappedE \(indexPath.row)")
    }
}
*/
