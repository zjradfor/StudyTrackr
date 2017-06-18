//
//  EventColourPickerViewController.swift
//  StudyTrackr Final Project
//
//  Created by ICS 4UI, Spring 2017.
//  Copyright © 2017 EDSS. All rights reserved.
//


import UIKit

class EventColourPickerViewController: UIViewController {
    var colour = UIColor.blue
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation
     @IBAction func goBack(_ sender: Any) {
        performSegue(withIdentifier: "unwindSegueToVC3", sender: self)
    }

    // MARK: - Colour Picking
    @IBAction func yellowPicker(_ sender: Any) {
        colour = UIColor.yellow
    }
    @IBAction func bluePicker(_ sender: Any) {
        colour = UIColor.blue
    }
    @IBAction func redPicker(_ sender: Any) {
        colour = UIColor.red
    }
    @IBAction func cyanPicker(_ sender: Any) {
        colour = UIColor.cyan
    }
    @IBAction func greenPicker(_ sender: Any) {
        colour = UIColor.green
    }
    @IBAction func magentaPicker(_ sender: Any) {
        colour = UIColor.magenta
    }
    @IBAction func orangePicker(_ sender: Any) {
        colour = UIColor.orange
    }
    @IBAction func purplePicker(_ sender: Any) {
        colour = UIColor.purple
    }
    @IBAction func brownPicker(_ sender: Any) {
        colour = UIColor.brown
    }
    @IBAction func blackPicker(_ sender: Any) {
        colour = UIColor.black
    }
    @IBAction func lightGreyPicker(_ sender: Any) {
        colour = UIColor.lightGray
    }
    @IBAction func darkGreyPicker(_ sender: Any) {
        colour = UIColor.darkGray
    }
    
}
