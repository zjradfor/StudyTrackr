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
    var dayFromSegue:IndexPath = []
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
