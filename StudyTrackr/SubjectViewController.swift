//
//  SubjectViewController.swift
//  StudyTrackr
//
//  Created by Zach Radford on 2017-05-10.
//  Copyright © 2017 John Slomka. All rights reserved.
//
// Zach did current code
//
//


import UIKit

class SubjectViewController: UIViewController {

    @IBOutlet weak var subjectTitleLabel: UILabel!
    
    var currentSubject: String = ""
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        subjectTitleLabel.text = currentSubject

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
