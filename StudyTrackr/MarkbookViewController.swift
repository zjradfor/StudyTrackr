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

    
    @IBOutlet weak var ButtonOne: UIButton!
    
    
    @IBAction func ButtonOnePressed(_ sender: UIButton) {
        //ButtonOne.setTitle("math", for: .normal)
        current = "math"
    }
    @IBAction func ButtonTwoPressed(_ sender: UIButton) {
    }
    @IBAction func ButtonThreePressed(_ sender: UIButton) {
    }
    @IBAction func ButtonFourPressed(_ sender: UIButton) {
    }
    @IBAction func ButtonFivePressed(_ sender: UIButton) {
    }
    @IBAction func ButtonSixPressed(_ sender: UIButton) {
    }
    @IBAction func ButtonSevenPressed(_ sender: UIButton) {
    }
    @IBAction func ButtonEightPressed(_ sender: UIButton) {
    }
    @IBAction func ButtonNinePressed(_ sender: UIButton) {
    }
    
 

    
    
    var current: String = "test"
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        current = "SUBJECT"
        let subjectOne = Subject(subjectName: "math")
        ButtonOne.setTitle(subjectOne.subjectName, for: .normal)
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

