//
//  BackgroundsViewController.swift
//  StudyTrackr
//
//  Created by Dylan Smith on 2017-05-09.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class BackgroundsViewController: UIViewController {
    

    
    func BackgroundCol() {
        let BackCol = GlobalBackCol
        switch BackCol {
            
        case "White":
            BackgroundView.backgroundColor = UIColor.white
            GlobalUICol = UIColor.white
                WhitePurchaseButton.text = "Current Background"
                PurplePurchaseButton.text = "Cost: 200"
                PinkPurchaseButton.text = "Cost: 200"
                YellowPurchaseButton.text = "Cost: 200"
    
        case "Purple":
            BackgroundView.backgroundColor = UIColor.purple
            GlobalUICol = UIColor.purple
            WhitePurchaseButton.text = "Select"
            PurplePurchaseButton.text = "Current Background"
            PinkPurchaseButton.text = "Cost: 200"
            YellowPurchaseButton.text = "Cost: 200"
            
        case "Pink":
            BackgroundView.backgroundColor = UIColor(red:1.00, green:0.76, blue:0.95, alpha:1.0)
            GlobalUICol = UIColor(red:1.00, green:0.76, blue:0.95, alpha:1.0)
            WhitePurchaseButton.text = "Select"
                PurplePurchaseButton.text = "Cost: 200"
                PinkPurchaseButton.text = "Current Background"
                YellowPurchaseButton.text = "Cost: 200"
            
        case "Yellow":
            BackgroundView.backgroundColor = UIColor.yellow
            GlobalUICol = UIColor.yellow
            WhitePurchaseButton.text = "Select"
                PurplePurchaseButton.text = "Cost: 200"
                PinkPurchaseButton.text = "Cost:200"
                YellowPurchaseButton.text = "Current Background"
            
            
        default: break
        
        }
    }
    
    @IBOutlet var BackgroundView: UIView!
    
    @IBAction func DefaultBackground(_ sender: Any) {
        GlobalBackCol = "White"
        BackgroundCol()
    }

    @IBAction func PurpleBackground(_ sender: Any) {
        
        if (GlobalCoins >= 200)&&(BackgroundView.backgroundColor != UIColor.purple){
            GlobalBackCol = "Purple"
            BackgroundCol ()
            GlobalCoins = GlobalCoins - 200
            secondLabel.text = "Coins: " + "\(GlobalCoins)"
        } //end of the if (not bought but has the money) statement
    }
    
    @IBAction func PinkBackground(_ sender: Any) {
        
        if (GlobalCoins >= 200)&&(BackgroundView.backgroundColor != UIColor(red:1.00, green:0.76, blue:0.95, alpha:1.0)){
            GlobalBackCol = "Pink"
            BackgroundCol ()
            GlobalCoins = GlobalCoins - 200
            secondLabel.text = "Coins: " + "\(GlobalCoins)"
        } //end of the if (not bought but has the money) statement
    }
    
    
    @IBAction func YellowBackground(_ sender: Any) {
        
        if (GlobalCoins >= 200)&&(BackgroundView.backgroundColor != UIColor.yellow){
            GlobalBackCol = "Yellow"
            BackgroundCol ()
            GlobalCoins = GlobalCoins - 200
            secondLabel.text = "Coins: " + "\(GlobalCoins)"
        } //end of the if (not bought but has the money) statement
    }

    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
        self.tabBarController?.tabBar.tintColor = GlobalUICol
    }
    
    
    //////////////////////////////////////////////////////////////////////////////
    @IBOutlet weak var secondLabel: UILabel!
    
    var stringPassed = ""
    
    
    @IBOutlet weak var YellowPurchaseButton: UILabel!
    @IBOutlet weak var PinkPurchaseButton: UILabel!
    @IBOutlet weak var WhitePurchaseButton: UILabel!
    @IBOutlet weak var PurplePurchaseButton: UILabel!
    
    ///////////////////////////viewDidLoad seperator
    override func viewDidLoad() {
        super.viewDidLoad()
        BackgroundCol()
        
        secondLabel.text = "Coins: " + "\(GlobalCoins)"
        
        if (BackgroundView.backgroundColor == UIColor.white){
            GlobalBackCol = "White"
        }
        if (BackgroundView.backgroundColor == UIColor.purple){
            GlobalBackCol = "Purple"
        }
        if (BackgroundView.backgroundColor == UIColor(red:1.00, green:0.76, blue:0.95, alpha:1.0)){
            GlobalBackCol = "Pink"
        }
        if (BackgroundView.backgroundColor == UIColor.yellow){
            GlobalBackCol = "Yellow"
        }
        BackgroundCol()
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
