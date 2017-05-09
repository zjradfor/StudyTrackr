//
//  DailyGiftViewController.swift
//  StudyTrackr
//
//  Created by Dylan Smith on 2017-05-08.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class DailyGiftViewController: UIViewController {
   

   
    


    @IBAction func GiftAPressed(_ sender: UIButton) {
    
    _ = (arc4random_uniform(25) + 1)
    
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

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
