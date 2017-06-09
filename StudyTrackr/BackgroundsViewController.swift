//
//  BackgroundsViewController.swift
//  StudyTrackr
//
//  Created by Dylan Smith on 2017-05-09.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class BackgroundsViewController: UIViewController {
     var BackCol = String()
    
    func BackgroundCol(BackCol: String) {
    
        switch BackCol {
            
        case "White":
            BackgroundView.backgroundColor = UIColor.white
            
        case "Purple":
            BackgroundView.backgroundColor = UIColor.purple
            
        case "Pink":
            BackgroundView.backgroundColor = UIColor(red:1.00, green:0.76, blue:0.95, alpha:1.0)
            
        case "Yellow":
            BackgroundView.backgroundColor = UIColor.yellow
            
        default: break
        
            
        }

    }
    
    
   

    
    @IBOutlet var BackgroundView: UIView!
    
    @IBAction func DefaultBackground(_ sender: Any) {
            BackgroundCol(BackCol: "White")
    }

    @IBAction func PurpleBackground(_ sender: Any) {
               BackgroundCol(BackCol: "Purple")
    }
    
    @IBAction func PinkBackground(_ sender: Any) {
               BackgroundCol(BackCol: "Pink")
    }
    
    @IBAction func YellowBackground(_ sender: Any) {
               BackgroundCol(BackCol: "Yellow")
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
        
        secondLabel.text = "Coins: " + "\(intPassed)"
        
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
