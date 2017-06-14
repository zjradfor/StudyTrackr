//
//  DailyGiftViewController.swift
//  StudyTrackr
//
//  Created by Dylan Smith on 2017-05-08.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class DailyGiftViewController: UIViewController {
   
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
        secondLabel.text = "Coins: " + "\(intPassed)"
        
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
