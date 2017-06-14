//
//  AddSubjectVC.swift
//  StudyTrackr
//
//  Created by Alex Berry on 2017-05-24.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class AddSubjectVC: UIViewController {

    
    
    @IBOutlet weak var AddSubjectField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /*@IBAction func ASButtonTapped(_ sender: UIButton) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let spot = Subject(context: context)
           spot.name = AddSubjectField.text!
        // save to coredata
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        let _ = navigationController?.popViewController(animated: true)    }

    }*/

   
  // override func didReceiveMemoryWarning() {
   //    super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
   // }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   // override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    //}
    

}
