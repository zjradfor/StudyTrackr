//
//  RewardsViewController.swift
//  StudyTrackr
//
//  Created by Dylan Smith on 2017-05-04.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class RewardsViewController: UIViewController {
   
    @IBAction func DailyRewardButton(_ sender: Any) {
        let myVC = storyboard?.instantiateViewController(withIdentifier: "DailyGiftViewController") as! DailyGiftViewController
        navigationController?.pushViewController(myVC, animated: true)

    }
    @IBAction func AvatarsButton(_ sender: Any) {
        let myVC = storyboard?.instantiateViewController(withIdentifier: "AvatarsViewController") as! AvatarsViewController
        navigationController?.pushViewController(myVC, animated: true)
    }

    @IBAction func FontsButton(_ sender: Any) {
        let myVC = storyboard?.instantiateViewController(withIdentifier: "FontsViewController") as! FontsViewController
        navigationController?.pushViewController(myVC, animated: true)

    }
    @IBAction func BackgroundsButton(_ sender: Any) {
        let myVC = storyboard?.instantiateViewController(withIdentifier: "BackgroundsViewController") as! BackgroundsViewController
        navigationController?.pushViewController(myVC, animated: true)

    }
    override func viewWillAppear(_ animated: Bool) {
 self.tabBarController?.tabBar.isHidden = false
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