//
//  RewardsViewController.swift
//  StudyTrackr
//
//  Created by Dylan Smith on 2017-05-04.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class RewardsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
self.tabBarController?.tabBar.isHidden = true // cannot make tabbar stay, so we will force it to be hidden and then create a button used in order to go back to our main menu screen once it exists
        
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
