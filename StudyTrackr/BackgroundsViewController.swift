//
//  BackgroundsViewController.swift
//  StudyTrackr
//
//  Created by Dylan Smith on 2017-05-09.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class BackgroundsViewController: UIViewController {
    
    var ownershipArray = [0,0,0]
    

    
    func BackgroundCol() {
        let BackCol = GlobalBackCol
        switch BackCol {
            
        case "White":
            BackgroundView.backgroundColor = UIColor.white
                WhitePurchaseButton.text = "Current Font"
            if (ownershipArray[0] == 1){
                PurplePurchaseButton.text = "Select"
            }
            if (ownershipArray[1] == 1){
                PinkPurchaseButton.text = "Select"
            }
            if (ownershipArray[2] == 1){
                YellowPurchaseButton.text = "Select"
            }
    
        case "Purple":
            BackgroundView.backgroundColor = UIColor.purple
            WhitePurchaseButton.text = "Select"
            
            PurplePurchaseButton.text = "Current Font"
        
            if (ownershipArray[1] == 1){
                PinkPurchaseButton.text = "Select"
            }
            if (ownershipArray[2] == 1){
                YellowPurchaseButton.text = "Select"
            }
            
        case "Pink":
            BackgroundView.backgroundColor = UIColor(red:1.00, green:0.76, blue:0.95, alpha:1.0)
            WhitePurchaseButton.text = "Select"
            
            if (ownershipArray[0] == 1){
                PurplePurchaseButton.text = "Select"
            }
                PinkPurchaseButton.text = "Current Font"
            
            if (ownershipArray[2] == 1){
                YellowPurchaseButton.text = "Select"
            }
            
        case "Yellow":
            BackgroundView.backgroundColor = UIColor.yellow
            WhitePurchaseButton.text = "Select"
            
            if (ownershipArray[0] == 1){
                PurplePurchaseButton.text = "Select"
            }
            if (ownershipArray[1] == 1){
                PinkPurchaseButton.text = "Select"
            }
                YellowPurchaseButton.text = "Current Font"
            
            
        default: break
        
            
        }
    }
    
    
   

    
    @IBOutlet var BackgroundView: UIView!
    
    @IBAction func DefaultBackground(_ sender: Any) {
        GlobalBackCol = "White"
        BackgroundCol()
        
    }

    @IBAction func PurpleBackground(_ sender: Any) {
        GlobalBackCol = "Purple"
        if (intPassed >= 200)&&(ownershipArray[0] == 0){          //not bought but enough money
            BackgroundCol ()
            intPassed = intPassed - 200
            secondLabel.text = "Coins: " + "\(intPassed)"
            ownershipArray.insert (1, at: 0)
        } //end of the if (not bought but has the money) statement
        
        if (ownershipArray[0] == 1) && (GlobalBackCol != "Purple"){       //already bought, not selected
            BackgroundCol()
            // AmericanPurchaseLabel.text = "Current Font"
        } //end of the if (bought but not selected) statment
    }
    
    @IBAction func PinkBackground(_ sender: Any) {
        GlobalBackCol = "Pink"
        if (intPassed >= 200)&&(ownershipArray[1] == 0){          //not bought but enough money
            BackgroundCol ()
            intPassed = intPassed - 200
            secondLabel.text = "Coins: " + "\(intPassed)"
            ownershipArray.insert (1, at: 1)
        } //end of the if (not bought but has the money) statement
        
        if (ownershipArray[1] == 1) && (GlobalBackCol != "Pink"){       //already bought, not selected
            BackgroundCol()
            // AmericanPurchaseLabel.text = "Current Font"
        } //end of the if (bought but not selected) statment
    }
    
    
    @IBAction func YellowBackground(_ sender: Any) {
        GlobalBackCol = "Yellow"
        if (intPassed >= 200)&&(ownershipArray[2] == 0){          //not bought but enough money
            BackgroundCol ()
            intPassed = intPassed - 200
            secondLabel.text = "Coins: " + "\(intPassed)"
            ownershipArray.insert (1, at: 2)
        } //end of the if (not bought but has the money) statement
        
        if (ownershipArray[2] == 1) && (GlobalBackCol != "Yellow"){       //already bought, not selected
            BackgroundCol()
            // AmericanPurchaseLabel.text = "Current Font"
        } //end of the if (bought but not selected) statment
    }

    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
    }
    
    
    //////////////////////////////////////////////////////////////////////////////
    @IBOutlet weak var secondLabel: UILabel!
    
    var stringPassed = ""
    var intPassed = Int()
    
    @IBOutlet weak var YellowPurchaseButton: UILabel!
    @IBOutlet weak var PinkPurchaseButton: UILabel!
    @IBOutlet weak var WhitePurchaseButton: UILabel!
    @IBOutlet weak var PurplePurchaseButton: UILabel!
    
    ///////////////////////////viewDidLoad seperator
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondLabel.text = "Coins: " + "\(intPassed)"
        
        YellowPurchaseButton.text = "Cost: 200"
        PinkPurchaseButton.text = "Cost: 200"
        WhitePurchaseButton.text = "Current Font"
        PurplePurchaseButton.text = "Cost: 200"
        
        
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
