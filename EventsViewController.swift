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
    var eventTextCounter = 0 // for cylcing through event labels
    let eventText = ["Test","Assignment","Homework","Event","Other"]
    var dayFromSegue = 0
    var monthFromSegue = 0
    var eventToSegue = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        automaticallyAdjustsScrollViewInsets = false
        

        if DateInfoArr[j][indexOfDay].atLeastOneEvent == true {
            showEventsField.text! += "\n"
            for var i in 0...DateInfoArr[j][indexOfDay].eventNumber - 1 {
                showEventsField.text! += "\n\(DateInfoArr[j][indexOfDay].events[i].subject) \(DateInfoArr[j][indexOfDay].events[i].type)\n\t- \(DateInfoArr[j][indexOfDay].events[i].location)\n\t- \(DateInfoArr[j][indexOfDay].events[i].time)\n\(DateInfoArr[j][indexOfDay].events[i].notes)\n"
                i += 1
            }
        }
        
        //Getting current date
        Header.text = "Day: \(dayFromSegue) Month: \(monthFromSegue)"

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
        }
    }
    @IBAction func unwindToVC2(segue:UIStoryboardSegue) { }

}
extension EventsViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EventsCell", for: indexPath)
        
        cell.textLabel?.text = eventText[eventTextCounter]
        eventTextCounter += 1
        return cell
    }
    //Selected Cell
    //var eventToSegue:IndexPath = []
    
    /*
    tableview
    override func tableView(_ tableView: UITableView,
                                 shouldSelectItemAt indexPath: IndexPath) -> Bool {
        print("tapped \(indexPath)")
        dayToSegue = indexPath
        self.performSegue(withIdentifier: "day", sender: self)
        return false
    }*/
}
extension EventsViewController: UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        eventToSegue = indexPath.row
        self.performSegue(withIdentifier: "event", sender: self)
        //print ("tapped \(indexPath.row)")
    }
}


