//
//  FontsViewController.swift
//  StudyTrackr
//
//  Created by Dylan Smith on 2017-05-09.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class FontsViewController: UIViewController {
    var FontNum = 1
    var firstOpener = 0
    @IBOutlet var FontsView: UIView!
    
    @IBOutlet weak var DefaultLabel: UILabel!
    @IBOutlet weak var TypeLabel: UILabel!
    @IBOutlet weak var NoteLabel: UILabel!
    @IBOutlet weak var MarkerLabel: UILabel!
    @IBOutlet weak var SnellLabel: UILabel!
    
    func ForceFont() {
        DefaultLabel.font = UIFont(name: "ArialMT", size: 16.0)
        TypeLabel.font = UIFont(name: "AmericanTypewriter", size: 16.0)
        NoteLabel.font = UIFont(name: "Noteworthy-Bold", size: 16.0)
        MarkerLabel.font = UIFont(name: "MarkerFelt-Thin", size: 16.0)
        SnellLabel.font = UIFont(name: "SnellRoundhand-Bold", size: 16.0)
    }
    
    func BackgroundCol() {
        
        
        let BackCol = GlobalBackCol
        
        switch BackCol {
            
        case "White":
            FontsView.backgroundColor = UIColor.white
            
        case "Purple":
            FontsView.backgroundColor = UIColor.purple
            
        case "Pink":
            FontsView.backgroundColor = UIColor(red:1.00, green:0.76, blue:0.95, alpha:1.0)
            
        case "Yellow":
            FontsView.backgroundColor = UIColor.yellow
            
        default: break
            
        }
    }
    
    func FontChanger() {
        
        FontNum = GlobalFonts
        
        switch FontNum {
        case 1:
        
            UILabel.appearance().font = UIFont(name: "ArialMT", size: 16.0)
           // UIButton.appearance().titleLabel?.font = UIFont(name: "ArialMT", size: 16.0)
                DefaultPurchaseLabel.text = "Current Font"
                AmericanPurchaseLabel.text = "Cost: 250"
                NoteWorthyPurchaseLabel.text = "Cost: 250"
                MarkerFeltPurchaseLabel.text = "Cost: 250"
                RoundhandPurchaseLabel.text = "Cost: 250"
            firstOpener = 1
            
        case 2:
    
            UILabel.appearance().font = UIFont(name: "AmericanTypewriter", size: 16.0)
           // UIButton.appearance().titleLabel?.font = UIFont(name: "AmericanTypewriter", size: 16.0)
            DefaultPurchaseLabel.text = "Select"
                AmericanPurchaseLabel.text = "Current Font"
                NoteWorthyPurchaseLabel.text = "Cost: 200"
                MarkerFeltPurchaseLabel.text = "Cost: 200"
                RoundhandPurchaseLabel.text = "Cost: 200"
            firstOpener = 1
            
        case 3:
            UILabel.appearance().font = UIFont(name: "Noteworthy-Bold", size: 16.0)
            UITextView.appearance().font = UIFont(name: "Noteworthy-Bold", size: 16.0)
            UITextField.appearance().font = UIFont(name: "Noteworthy-Bold", size: 16.0)
            //  UITableView.appearance().font = UIFont(name: "Noteworthy-Bold", size: 16.0)
            UITabBarItem.appearance().setTitleTextAttributes([NSFontAttributeName: "Noteworthy-Bold"], for: .normal)
           // UITabBarItem.appearance().font = UIFont(name: "Noteworthy-Bold", size: 16.0)
            //setTitleTextAttributes([NSFontAttributeName: UIFont(name: "Noteworthy-Bold", size: 10)!], for: .normal)
            //UITableViewCell.appearance().font = UIFont(name: "Noteworthy-Bold", size: 16.0)
            //  .appearance().font = UIFont(name: "Noteworthy-Bold", size: 16.0)
           // UIButton.appearance().titleLabel?.font = UIFont(name: "Noteworthy-Bold", size: 16.0)
            DefaultPurchaseLabel.text = "Select"
                AmericanPurchaseLabel.text = "Cost: 200"
                NoteWorthyPurchaseLabel.text = "Current Font"
                MarkerFeltPurchaseLabel.text = "Cost: 200"
                RoundhandPurchaseLabel.text = "Cost: 200"
            firstOpener = 1
        
        case 4:
            UILabel.appearance().font = UIFont(name: "MarkerFelt-Thin", size: 16.0)
           // UIButton.appearance().titleLabel?.font = UIFont(name: "MarkerFelt-Thin", size: 16.0)
            DefaultPurchaseLabel.text = "Select"
                AmericanPurchaseLabel.text = "Cost: 200"
                NoteWorthyPurchaseLabel.text = "Cost: 200"
                MarkerFeltPurchaseLabel.text = "Current Font"
                RoundhandPurchaseLabel.text = "Cost: 200"
            firstOpener = 1
            
        case 5:
            UILabel.appearance().font = UIFont(name: "SnellRoundhand-Bold", size: 16.0)
        // UIButton.appearance().titleLabel?.font = UIFont(name: "SnellRoundhand-Bold", size: 16.0)
            DefaultPurchaseLabel.text = "Select"
                AmericanPurchaseLabel.text = "Cost: 200"
                NoteWorthyPurchaseLabel.text = "Cost: 200"
                MarkerFeltPurchaseLabel.text = "Cost: 200"
                RoundhandPurchaseLabel.text = "Current Font"
            firstOpener = 1
                
        default:
            break
        }
        
    } //End of the Switch Statement
    
    @IBAction func DefaultFont(_ sender: Any) {
        GlobalFonts = 1
        FontChanger()
    }
    
    @IBAction func TypewriterFont(_ sender: Any) {
        if (GlobalCoins >= 250)&&(UILabel.appearance().font != UIFont(name: "AmericanTypewriter", size: 16.0)){          //not bought but enough money
            GlobalFonts = 2
            FontChanger()
            GlobalCoins = GlobalCoins - 250
            secondLabel.text = "Coins: " + "\(GlobalCoins)"
        } //end of the if (not bought but has the money) statement
    }
    
    @IBAction func NoteworthyFont(_ sender: Any) {
        if (GlobalCoins >= 250)&&(UILabel.appearance().font != UIFont(name: "Noteworthy-Bold", size: 16.0)){          //not bought but enough money
           GlobalFonts = 3
            FontChanger()
            GlobalCoins = GlobalCoins - 250
            secondLabel.text = "Coins: " + "\(GlobalCoins)"
        } //end of the if (not bought but has the money) statement
    }
    
    @IBAction func MarkerFont(_ sender: Any) {
        if (GlobalCoins >= 250)&&(UILabel.appearance().font != UIFont(name: "MarkerFelt-Thin", size: 16.0)){          //not bought but enough money
            GlobalFonts = 4
            FontChanger()
            GlobalCoins = GlobalCoins - 250
            secondLabel.text = "Coins: " + "\(GlobalCoins)"
        } //end of the if (not bought but has the money) statement
    }
    
    @IBAction func RoundhandFont(_ sender: Any) {
        if (GlobalCoins >= 250)&&(UILabel.appearance().font != UIFont(name: "SnellRoundhand-Bold", size: 16.0)){          //not bought but enough money
          GlobalFonts = 5
            FontChanger()
            GlobalCoins = GlobalCoins - 250
            secondLabel.text = "Coins: " + "\(GlobalCoins)"
        } //end of the if (not bought but has the money) statement
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
        ForceFont()
    }
    
    //////////////////////////////////////////////////////////////////////////////
        
    @IBOutlet weak var secondLabel: UILabel!
        var stringPassed = ""
       // var GlobalCoins = Int()
    
    @IBOutlet weak var FontStyle: UILabel!
    @IBOutlet weak var DefaultPurchaseLabel: UILabel!
    @IBOutlet weak var AmericanPurchaseLabel: UILabel!
    @IBOutlet weak var NoteWorthyPurchaseLabel: UILabel!
    @IBOutlet weak var MarkerFeltPurchaseLabel: UILabel!
    @IBOutlet weak var RoundhandPurchaseLabel: UILabel!
    
    ////////////////////Override divider from buttons
    
        override func viewDidLoad() {
            super.viewDidLoad()
            BackgroundCol()
            secondLabel.text = "Coins: " + "\(GlobalCoins)"
            ForceFont()
            FontChanger()
            //FontStyle.font = UIFont(name: "ArialMT", size: 16.0)
            
            DefaultPurchaseLabel.font = UIFont(name: "ArialMT", size: 16.0)
            AmericanPurchaseLabel.font = UIFont(name: "ArialMT", size: 16.0)
            NoteWorthyPurchaseLabel.font = UIFont(name: "ArialMT", size: 16.0)
            MarkerFeltPurchaseLabel.font = UIFont(name: "ArialMT", size: 16.0)
            RoundhandPurchaseLabel.font = UIFont(name: "ArialMT", size: 16.0)
            secondLabel.font = UIFont(name: "ArialMT", size: 16.0)
            
            if (UILabel.appearance().font == UIFont(name: "AmericanTypewriter", size: 16.0)){
                GlobalFonts = 2
            }
            if (UILabel.appearance().font == UIFont(name: "Noteworthy-Bold", size: 16.0)){
                GlobalFonts = 3
            }
            if (UILabel.appearance().font == UIFont(name: "MarkerFelt-Thin", size: 16.0)){
                GlobalFonts = 4
            }
            if (UILabel.appearance().font == UIFont(name: "SnellRoundhand-Bold", size: 16.0)){
                GlobalFonts = 5
            }
            if (firstOpener == 0){
                GlobalFonts = 1
            }
            
            
            FontChanger()
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
