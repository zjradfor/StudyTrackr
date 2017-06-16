//
//  DailyGiftViewController.swift
//  StudyTrackr
//
//  Created by Dylan Smith on 2017-05-08.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit



class DailyGiftViewController: UIViewController {
   
    var GiftCoins = Int()
    
    func DailyGift () {
        GiftCoins = Int(arc4random_uniform(76) + 25)
        GlobalCoins = GlobalCoins + GiftCoins
        GlobalGiftUnlock = false
        DailyGiftUp.isEnabled = GlobalGiftUnlock
        DailyGiftEast.isEnabled = GlobalGiftUnlock
        DailyGiftWest.isEnabled = GlobalGiftUnlock
    }
    
   
    
    @IBAction func DailyGiftTop(_ sender: UIButton) {
        DailyGift()
        secondLabel.text = "Coins: " + "\(GlobalCoins)"
        
    }
    @IBAction func DailyGiftLeft(_ sender: UIButton) {
        DailyGift()
        secondLabel.text = "Coins: " + "\(GlobalCoins)"
    }
    @IBAction func DailyGiftRight(_ sender: UIButton) {
        DailyGift()
        secondLabel.text = "Coins: " + "\(GlobalCoins)"
    }
    @IBOutlet weak var DailyGiftUp: UIButton!
    
    @IBOutlet weak var DailyGiftEast: UIButton!
    
    @IBOutlet weak var DailyGiftWest: UIButton!
    
    @IBOutlet var GiftsView: UIView!

    func BackgroundCol() {
        
        
        let BackCol = GlobalBackCol
        
        switch BackCol {
            
        case "White":
            GiftsView.backgroundColor = UIColor.white
            
        case "Purple":
            GiftsView.backgroundColor = UIColor.purple
            
        case "Pink":
            GiftsView.backgroundColor = UIColor(red:1.00, green:0.76, blue:0.95, alpha:1.0)
            
        case "Yellow":
            GiftsView.backgroundColor = UIColor.yellow
            
        default: break
            
        }
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
        BackgroundCol()
        
        if (GlobalGiftUnlock == false) {
            DailyGiftUp.isEnabled = GlobalGiftUnlock
            DailyGiftEast.isEnabled = GlobalGiftUnlock
            DailyGiftWest.isEnabled = GlobalGiftUnlock
        }
        
        secondLabel.text = "Coins: " + "\(GlobalCoins)"
        
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
