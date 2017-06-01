//
//  FontsViewController.swift
//  StudyTrackr
//
//  Created by Dylan Smith on 2017-05-09.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class FontsViewController: UIViewController {

    @IBOutlet weak var FontStyle: UILabel!
    
    @IBAction func DefaultFont(_ sender: Any) {
        FontStyle.font = UIFont(name: "ArialMT", size: 16.0)
    }
    @IBAction func TypewriterFont(_ sender: Any) {
        FontStyle.font = UIFont(name: "AmericanTypewriter", size: 16.0 )
    }
    @IBAction func NoteworthyFont(_ sender: Any) {
        FontStyle.font = UIFont(name: "Noteworthy-Bold", size: 16.0 )
    }
    @IBAction func MarkerFont(_ sender: Any) {
        FontStyle.font = UIFont(name: "MarkerFelt-Thin", size: 16.0 )
    }
    @IBAction func RoundhandFont(_ sender: Any) {
        FontStyle.font = UIFont(name: "SnellRoundhand-Bold", size: 16.0)
    }

    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
    }
    
    //////////////////////////////////////////////////////////////////////////////
        
    @IBOutlet weak var secondLabel: UILabel!
        var stringPassed = ""
        var intPassed = Int()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            secondLabel.text = stringPassed + "my Int: \(intPassed)"
        
        
        // Do any additional setup after loading the view.
    }
////////////////////////////////////////////////////////////////////////////////
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
