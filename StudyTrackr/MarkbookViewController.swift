//
//  MarkbookViewController.swift
//  StudyTrackr
//
//  Created by John Slomka on 2017-04-27.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class MarkbookViewController: UIViewController {

    @IBAction func ButtonOne(_ sender: UIButton) {
        current = "math"
    }
    @IBAction func ButtonTwo(_ sender: UIButton) {
    }
    @IBAction func ButtonThree(_ sender: UIButton) {
    }
    @IBAction func ButtonFour(_ sender: UIButton) {
    }
    @IBAction func ButtonFive(_ sender: UIButton) {
    }
    //rest of buttons
    
    var current: String = "test"
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        current = "SUBJECT"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // if (segue.identifier == "subjectOne"){
        let secondVC = segue.destination as! SubjectViewController
        secondVC.currentSubject = current
        // }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

