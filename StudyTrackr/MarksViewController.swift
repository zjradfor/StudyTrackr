//
//  MarksViewController.swift
//  StudyTrackr
//
//  Created by Zach Radford on 2017-06-05.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class MarksViewController: UIViewController {
    
    var nameFromSegue = ""
    var markFromSegue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = nameFromSegue
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var markLabel: UILabel!
    
    
    @IBAction func AddMarkPressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "Add Mark", message: "Enter mark here", preferredStyle: .alert)
        let saveAction = UIAlertAction(title: "Add", style: .default)
            
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .default)
        
        alert.addTextField()
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
      //  let textField = alert.textFields![0]
       // markLabel.text = textField.text
        
        present(alert, animated: true)
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
