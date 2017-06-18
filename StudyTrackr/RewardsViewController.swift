//
//  RewardsViewController.swift
//  StudyTrackr Final Project
//
//  Created by ICS 4UI, Spring 2017.
//  Copyright © 2017 EDSS. All rights reserved.
//

import UIKit
import CoreData

var GlobalGiftUnlock = true
var GlobalBackCol = ""
var GlobalUICol = UIColor.white
var GlobalCoins = 2500 // set a default coin value as getting things to save doesnt exactly work right now
var GlobalFonts = 0
var GlobalAvatars = Int16(0)
var AvatarOwnerArray = [0,0,0]

let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext


class RewardsViewController: UIViewController {
    
    ///////////////////////////////////////////////////////////////////////////////////////////////
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var AvatarDisplay: UIImageView!
    
    func ChosenAvatar() {
        let DisplayAvatar = GlobalAvatars
        
        switch DisplayAvatar {
        case 0:
            AvatarDisplay.image = UIImage(named: "Avatar0")
        case 1:
            AvatarDisplay.image = UIImage(named:"Avatar1")
        case 2:
            AvatarDisplay.image = UIImage(named:"Avatar2")
        case 3:
            AvatarDisplay.image = UIImage(named:"Avatar3")
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
        
        
        if GlobalGiftUnlock == false {
            GlobalGiftUnlock = true
        }
        
        //  BackgroundCol()
        /*
         RewardsThings.setValue(GlobalCoins, forKey: "globalcoins")
         RewardsThings.setValue(GlobalAvatars, forKey: "globalavatars")
         RewardsThings.setValue(GlobalFonts, forKey: "globalfonts")
         RewardsThings.setValue(GlobalBackCol, forKey: "globalbackcol")
         
         do {
         try context.save()
         } catch {
         print("ERROR")
         }
         
         let request = NSFetchRequest<NSFetchRequestResult>(entityName: "RewardsThings")
         request.returnsObjectsAsFaults = false
         
         do {
         let results = try context.fetch(request)
         if results.count > 0 {
         for result in results as! [NSManagedObject] {
         
         if let coins = result.value(forKey: "globalcoins") as? Int {
         GlobalCoins = coins
         }
         if let avatars = result.value(forKey: "globalavatars") as? Int {
         GlobalAvatars = avatars
         }
         if let fonts = result.value(forKey: "globalfonts") as? Int {
         GlobalFonts = fonts
         }
         if let backCol = result.value(forKey: "globalbackcol") as? String {
         GlobalBackCol = backCol
         }
         
         
         
         
         
         }
         }
         } catch {
         print("Error")
         }
         
         */
        
        
        
        
        
        
        
        
        
        
        
        
        
        
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
