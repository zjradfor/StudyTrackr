//
//  AvatarsViewController.swift
//  StudyTrackr
//
//  Created by Dylan Smith on 2017-05-09.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class AvatarsViewController: UIViewController {

    @IBAction func AvatarSmile(_ sender: Any) {
        GlobalAvatars = 0
    }
    
    @IBAction func AvatarSpike(_ sender: Any) {
        GlobalAvatars = 3
    }
    
    @IBAction func AvatarLola(_ sender: Any) {
        GlobalAvatars = 1
    }
    
    @IBAction func AvatarFlub(_ sender: Any) {
        GlobalAvatars = 2
    }
    @IBOutlet var AvatarsView: UIView!

    func BackgroundCol() {
        
        
        let BackCol = GlobalBackCol
        
        switch BackCol {
            
        case "White":
            AvatarsView.backgroundColor = UIColor.white
            
        case "Purple":
            AvatarsView.backgroundColor = UIColor.purple
            
        case "Pink":
            AvatarsView.backgroundColor = UIColor(red:1.00, green:0.76, blue:0.95, alpha:1.0)
            
        case "Yellow":
            AvatarsView.backgroundColor = UIColor.yellow
            
        default: break
            
        }
    }

    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
        
    }
  

        //////////////////////////////////////////////////////////////////////////////
        @IBOutlet weak var secondLabel: UILabel!
    
        var stringPassed = ""
       // var GlobalCoins = Int()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            BackgroundCol()
            secondLabel.text = "Coins: " + "\(GlobalCoins)"
            
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
