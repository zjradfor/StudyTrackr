//
//  MarksViewController.swift
//  StudyTrackr
//
//  Created by Zach Radford on 2017-06-05.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class MarksViewController: UIViewController {
    
    var nameFromSegue = ""
    var markFromSegue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = nameFromSegue
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
