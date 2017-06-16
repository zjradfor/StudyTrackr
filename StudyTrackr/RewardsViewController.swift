//
//  RewardsViewController.swift
//  StudyTrackr
//
//  Created by Dylan Smith on 2017-05-04.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

var GlobalGiftLock = true
var GlobalBackCol = ""
var GlobalCoins = 5000
var GlobalFonts = 0
var GlobalAvatars = 0
var AvatarOwnerArray = [0,0,0]
class RewardsViewController: UIViewController {

    ///////////////////////////////////////////////////////////////////////////////////////////////
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var AvatarDisplay: UIImageView!
   
    func ChosenAvatar() {
        let DisplayAvatar = GlobalAvatars
        
        switch DisplayAvatar {
        case 0:
            AvatarDisplay.image = #imageLiteral(resourceName: "Avatar0")
        case 1:
            AvatarDisplay.image = #imageLiteral(resourceName: "Avatar1")
        case 2:
            AvatarDisplay.image = #imageLiteral(resourceName: "Avatar2")
        case 3:
            AvatarDisplay.image = #imageLiteral(resourceName: "Avatar3")
        default: break
        }
    }
    //let myVC = storyboard?.instantiateViewControllerWithIdentifier("SecondVC") as! SecondVC
    //myVC.stringPassed = myLabel.text!
    //navigationController?.pushViewController(myVC, animated: true)
    
    ///////////////////////////////////////////////////////////////////////////////////////////////

    @IBOutlet var RewardsView: UIView!
   
    
    func BackgroundCol() {
        
        
         let BackCol = GlobalBackCol
        
        switch BackCol {
            
        case "White":
            RewardsView.backgroundColor = UIColor.white
            
        case "Purple":
            RewardsView.backgroundColor = UIColor.purple
            
        case "Pink":
            RewardsView.backgroundColor = UIColor(red:1.00, green:0.76, blue:0.95, alpha:1.0)
            
        case "Yellow":
            RewardsView.backgroundColor = UIColor.yellow
            
        default: break
            
        }
    }
    
    
    @IBAction func DailyRewardButton(_ sender: Any) {
        let RewardsViewController = storyboard?.instantiateViewController(withIdentifier: "DailyGiftViewController") as! DailyGiftViewController
       // RewardsViewController.stringPassed = myLabel.text!
        // RewardsViewController.intPassed = myInt
        navigationController?.pushViewController(RewardsViewController, animated: true)


    }
    @IBAction func AvatarsButton(_ sender: Any) {
        let RewardsViewController = storyboard?.instantiateViewController(withIdentifier: "AvatarsViewController") as! AvatarsViewController
       // RewardsViewController.stringPassed = myLabel.text!
        //RewardsViewController.intPassed = myInt
        navigationController?.pushViewController(RewardsViewController, animated: true)
    }

    @IBAction func FontsButton(_ sender: Any) {
        let RewardsViewController = storyboard?.instantiateViewController(withIdentifier: "FontsViewController") as! FontsViewController
       // RewardsViewController.stringPassed = myLabel.text!
       // RewardsViewController.intPassed = myInt
        navigationController?.pushViewController(RewardsViewController, animated: true)
    }
    
    @IBAction func BackgroundsButton(_ sender: Any) {
        let RewardsViewController = storyboard?.instantiateViewController(withIdentifier: "BackgroundsViewController") as! BackgroundsViewController
        //RewardsViewController.stringPassed = myLabel.text!
        //RewardsViewController.intPassed = myInt
        navigationController?.pushViewController(RewardsViewController, animated: true)

    }
    override func viewWillAppear(_ animated: Bool) {
 self.tabBarController?.tabBar.isHidden = false
        BackgroundCol()
        ChosenAvatar()
        myLabel.text = "Coins: " + "\(GlobalCoins)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //  BackgroundCol()
        
        
        
        }
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
