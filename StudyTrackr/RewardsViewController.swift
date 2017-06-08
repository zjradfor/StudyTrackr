//
//  RewardsViewController.swift
//  StudyTrackr
//
//  Created by Dylan Smith on 2017-05-04.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit


class RewardsViewController: UIViewController {

    ///////////////////////////////////////////////////////////////////////////////////////////////
    @IBOutlet weak var myLabel: UILabel!
    
    var myInt = 500
    
    //let myVC = storyboard?.instantiateViewControllerWithIdentifier("SecondVC") as! SecondVC
    //myVC.stringPassed = myLabel.text!
    //navigationController?.pushViewController(myVC, animated: true)
    
    ///////////////////////////////////////////////////////////////////////////////////////////////

    @IBOutlet var RewardsView: UIView!
   
     var RecievedCol = String()
    
    func BackgroundCol(BackCol: String) {
        
        
         let BackCol = RecievedCol
        
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
        RewardsViewController.stringPassed = myLabel.text!
        RewardsViewController.intPassed = myInt
        navigationController?.pushViewController(RewardsViewController, animated: true)


    }
    @IBAction func AvatarsButton(_ sender: Any) {
        let RewardsViewController = storyboard?.instantiateViewController(withIdentifier: "AvatarsViewController") as! AvatarsViewController
        RewardsViewController.stringPassed = myLabel.text!
        RewardsViewController.intPassed = myInt
        navigationController?.pushViewController(RewardsViewController, animated: true)
    }

    @IBAction func FontsButton(_ sender: Any) {
        let RewardsViewController = storyboard?.instantiateViewController(withIdentifier: "FontsViewController") as! FontsViewController
        RewardsViewController.stringPassed = myLabel.text!
        RewardsViewController.intPassed = myInt
        navigationController?.pushViewController(RewardsViewController, animated: true)
    }
    
    @IBAction func BackgroundsButton(_ sender: Any) {
        let RewardsViewController = storyboard?.instantiateViewController(withIdentifier: "BackgroundsViewController") as! BackgroundsViewController
        RewardsViewController.stringPassed = myLabel.text!
        RewardsViewController.intPassed = myInt
        navigationController?.pushViewController(RewardsViewController, animated: true)

    }
    override func viewWillAppear(_ animated: Bool) {
 self.tabBarController?.tabBar.isHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel.text = "Coins: " + "\(myInt)"
        
        
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
