//
//  NewEventTableViewController.swift
//  StudyTrackr
//
//  Created by Tristan Devos on 2017-05-24.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class NewEventTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
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
        // #warning Incomplete implementation, return the number of rows
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "datePickerCell", for: indexPath)
        if indexPath == [0,0]{
            print("RAAN")
            cell = tableView.dequeueReusableCell(withIdentifier: "subjectCell", for: indexPath)
        }
        if indexPath == [0,1]{
            cell = tableView.dequeueReusableCell(withIdentifier: "datePickerCell", for: indexPath)
        }
        // Configure the cell...
        print(cell)
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
