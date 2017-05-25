//
//  BackgroundsViewController.swift
//  StudyTrackr
//
//  Created by Dylan Smith on 2017-05-09.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class BackgroundsViewController: UIViewController {


    
    @IBOutlet var BackgroundView: UIView!
    
    @IBAction func DefaultBackground(_ sender: Any) {

        BackgroundView.backgroundColor = UIColor.white

    }

    @IBAction func PurpleBackground(_ sender: Any) {
        BackgroundView.backgroundColor = UIColor.purple
    }
    
    @IBAction func PinkBackground(_ sender: Any) {
        BackgroundView.backgroundColor = UIColor(red:1.00, green:0.76, blue:0.95, alpha:1.0)
        
        
    }
    
    @IBAction func YellowBackground(_ sender: Any) {
        BackgroundView.backgroundColor = UIColor.yellow
    }

    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
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
