//
//  MarkbookViewController.swift
//  StudyTrackr
//
//  Created by John Slomka on 2017-04-27.
//  Copyright © 2017 John Slomka. All rights reserved.
//
// Alex researching segues into other viewcontrollers. Working on edit button to add new subjects
// Zach did current code
//

import UIKit

class MarkbookViewController: UIViewController {

    @IBAction func ButtonOne(_ sender: UIButton) {
        current = "math"
    }
    @IBAction func ButtonTwo(_ sender: UIButton) {
        current = "English"
    }
    @IBAction func ButtonThree(_ sender: UIButton) {
        current = "Science"
    }
    @IBAction func ButtonFour(_ sender: UIButton) {
        current = "french"
    }
    @IBAction func ButtonFive(_ sender: UIButton) {
        current = "gym"
    }
    @IBAction func ButtonSix(_ sender: UIButton) {
        current = "art"
    }
    @IBAction func ButtonSeven(_ sender: UIButton) {
    }
    @IBAction func ButtonEight(_ sender: UIButton) {
    }
    @IBAction func ButtonNine(_ sender: UIButton) {
    }
    
    
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

