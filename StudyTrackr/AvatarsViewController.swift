//
//  AvatarsViewController.swift
//  StudyTrackr
//
//  Created by Dylan Smith on 2017-05-09.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class AvatarsViewController: UIViewController {
    
    func AvatarFunction() {
    
    if (GlobalAvatars == 0){
    SmileLabel.text = "Smiles is active"
    }
    if (GlobalAvatars != 0){
    SmileLabel.text = "Select Smiles"
    }
        
    if (GlobalAvatars == 3){
    SpikeLabel.text = "Spike is active"
    }
    if (GlobalAvatars != 3)&&(AvatarOwnerArray[0] == 1){
    SpikeLabel.text = "Select Spike"
    }
    if (AvatarOwnerArray[0] == 0){
    SpikeLabel.text = "Spike's Cost: 300"
    }
        
    if (GlobalAvatars == 1){
    LolaLabel.text = "Lola is active"
    }
    if (GlobalAvatars != 1)&&(AvatarOwnerArray[1] == 1){
    LolaLabel.text = "Select Lola"
    }
    if (AvatarOwnerArray[1] == 0){
    LolaLabel.text = "Lola's Cost: 300"
    }
     
        
    if (GlobalAvatars == 2){
    FlubLabel.text = "Flub is active"
    }
    if (GlobalAvatars != 2)&&(AvatarOwnerArray[2] == 1){
    FlubLabel.text = "Flub Spike"
    }
    if (AvatarOwnerArray[2] == 0){
    FlubLabel.text = "Flub's Cost: 300"
    }
        
        
    }
    
    
    
    @IBAction func AvatarSmile(_ sender: Any) {
        GlobalAvatars = 0
        AvatarFunction()
    }
    
    @IBAction func AvatarSpike(_ sender: Any) {
        if (GlobalCoins >= 300)&&(AvatarOwnerArray[0] == 0){          //not bought but enough money
            GlobalCoins = GlobalCoins - 300
            secondLabel.text = "Coins: " + "\(GlobalCoins)"
            GlobalAvatars = 3
            AvatarOwnerArray[0] = 1
            AvatarFunction()
             RewardsThings.setValue(GlobalAvatars, forKey: "globalAvatars")
            do {
                try context.save()
            } catch {
                print("ERROR")
            }
    }
        if (AvatarOwnerArray[0] == 1)&&(GlobalAvatars != 3){
            GlobalAvatars = 3
            AvatarFunction()
        }
    }
    
    @IBAction func AvatarLola(_ sender: Any) {
        if (GlobalCoins >= 300)&&(AvatarOwnerArray[1] == 0){          //not bought but enough money
            GlobalCoins = GlobalCoins - 300
            secondLabel.text = "Coins: " + "\(GlobalCoins)"
            GlobalAvatars = 1
            AvatarOwnerArray[1] = 1
            AvatarFunction()
             RewardsThings.setValue(GlobalAvatars, forKey: "globalAvatars")
            do {
                try context.save()
            } catch {
                print("ERROR")
            }
        }
        if (AvatarOwnerArray[1] == 1)&&(GlobalAvatars != 1){
            GlobalAvatars = 1
            AvatarFunction()
        }
    }
    
    @IBAction func AvatarFlub(_ sender: Any) {
        if (GlobalCoins >= 300)&&(AvatarOwnerArray[2] == 0){          //not bought but enough money
            GlobalCoins = GlobalCoins - 300
            secondLabel.text = "Coins: " + "\(GlobalCoins)"
            GlobalAvatars = 2
            AvatarOwnerArray[2] = 1
            AvatarFunction()
             RewardsThings.setValue(GlobalAvatars, forKey: "globalAvatars")
            do {
                try context.save()
            } catch {
                print("ERROR")
            }
        }
        if (AvatarOwnerArray[2] == 1)&&(GlobalAvatars != 2){
            GlobalAvatars = 2
            AvatarFunction()
        }
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
    
    @IBOutlet weak var SmileLabel: UILabel!
    @IBOutlet weak var SpikeLabel: UILabel!
    @IBOutlet weak var LolaLabel: UILabel!
    @IBOutlet weak var FlubLabel: UILabel!
    
    //////////////////////////////////////////ViewDidLoad Seperator
        override func viewDidLoad() {
            super.viewDidLoad()
            
            BackgroundCol()
            secondLabel.text = "Coins: " + "\(GlobalCoins)"
         
            AvatarFunction()
            
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
