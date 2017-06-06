//
//  FontsViewController.swift
//  StudyTrackr
//
//  Created by Dylan Smith on 2017-05-09.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class FontsViewController: UIViewController {
    var FontNum = Int(0)
    var ownershipArray = [0, 0, 0, 0]
    
    @IBOutlet weak var FontStyle: UILabel!
    
    func FontChanger(FontNum: Int) {
        
        switch FontNum {
        case 1:
            FontStyle.font = UIFont(name: "ArialMT", size: 16.0)
        case 2:
            FontStyle.font = UIFont(name: "AmericanTypewriter", size: 16.0 )
        case 3:
            FontStyle.font = UIFont(name: "Noteworthy-Bold", size: 16.0 )
        case 4:
            FontStyle.font = UIFont(name: "MarkerFelt-Thin", size: 16.0 )
        case 5:
            FontStyle.font = UIFont(name: "SnellRoundhand-Bold", size: 16.0)
        default:
            break
        }
        
    }

    @IBAction func DefaultFont(_ sender: Any) {
        
        FontChanger(FontNum: 1)
    }
    
    @IBAction func TypewriterFont(_ sender: Any) {
        if (intPassed >= 250)&&(ownershipArray[0] == 0){          //not bought but enough money
            FontChanger(FontNum: 2)
            intPassed = intPassed - 250
            secondLabel.text = "Coins: " + "\(intPassed)"
            ownershipArray.insert (1, at: 0)
        } //end of the if (not bought but has the money) statement
        
        if (ownershipArray[0] == 1) && (FontNum != 2){       //already bought, not selected
           FontChanger(FontNum: 2)
            
        } //end of the if (bought but not selected) statment
    }
    
    @IBAction func NoteworthyFont(_ sender: Any) {
        if (intPassed >= 250)&&(ownershipArray[1] == 0){          //not bought but enough money
            FontChanger(FontNum: 3)
            intPassed = intPassed - 250
            secondLabel.text = "Coins: " + "\(intPassed)"
            ownershipArray.insert (1, at: 1)
        } //end of the if (not bought but has the money) statement
        
        if (ownershipArray[1] == 1) && (FontNum != 3){       //already bought, not selected
           FontChanger(FontNum: 3)
            
        } //end of the if (bought but not selected) statment
    }
    
    @IBAction func MarkerFont(_ sender: Any) {
        if (intPassed >= 250)&&(ownershipArray[2] == 0){          //not bought but enough money
            FontChanger(FontNum: 4)
            intPassed = intPassed - 250
            secondLabel.text = "Coins: " + "\(intPassed)"
            ownershipArray.insert (1, at: 2)
        } //end of the if (not bought but has the money) statement
        
        if (ownershipArray[2] == 1) && (FontNum != 4){       //already bought, not selected
            FontChanger(FontNum: 4)
            
        } //end of the if (bought but not selected) statment
    }
    
    @IBAction func RoundhandFont(_ sender: Any) {
        if (intPassed >= 250)&&(ownershipArray[3] == 0){          //not bought but enough money
            FontChanger(FontNum: 5)
            intPassed = intPassed - 250
            secondLabel.text = "Coins: " + "\(intPassed)"
            ownershipArray.insert (1, at: 3)
        } //end of the if (not bought but has the money) statement
        
        if (ownershipArray[3] == 1) && (FontNum != 5){       //already bought, not selected
            FontChanger(FontNum: 5)
            
        } //end of the if (bought but not selected) statment
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
    }
    
    //////////////////////////////////////////////////////////////////////////////
        
    @IBOutlet weak var secondLabel: UILabel!
        var stringPassed = ""
        var intPassed = Int()
    
     @IBOutlet weak var DefaultPurchaseLabel: UILabel!
    
    
    ////////////////////Override divider from buttons
        override func viewDidLoad() {
            super.viewDidLoad()
            
            secondLabel.text = "Coins: " + "\(intPassed)"
            
            if (FontNum == 1){
                DefaultPurchaseLabel.text = "Current Font"
            }
            
            if (FontNum != 1){
                DefaultPurchaseLabel.text = "Select"
            }
    }
////////////////////////////////////////////////////////////////////////////////
    
      // Do any additional setup after loading the view.
    
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
