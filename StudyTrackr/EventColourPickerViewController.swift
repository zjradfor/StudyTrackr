//
//  EventColourPickerViewController.swift
//  StudyTrackr
//
//  Created by Tristan Devos on 2017-05-26.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class EventColourPickerViewController: UIViewController {

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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "colour"){
            let vc = segue.destination as! NewEventViewController
            vc.eventColour = colourPicked
        }
    }
    
    // MARK: - Colour Picking
    var colourPicked = "Black"
    @IBAction func yellowPicker(_ sender: Any) {
        self.performSegue(withIdentifier: "colour", sender: self)
        colourPicked = "Yellow"
    }
    @IBAction func bluePicker(_ sender: Any) {
        self.performSegue(withIdentifier: "colour", sender: self)
        colourPicked = "Blue"
    }
    @IBAction func redPicker(_ sender: Any) {
        self.performSegue(withIdentifier: "colour", sender: self)
        colourPicked = "Red"
    }
    @IBAction func cyanPicker(_ sender: Any) {
        self.performSegue(withIdentifier: "colour", sender: self)
        colourPicked = "Cyan"
    }
    @IBAction func greenPicker(_ sender: Any) {
        self.performSegue(withIdentifier: "colour", sender: self)
        colourPicked = "Green"
    }
    @IBAction func magentaPicker(_ sender: Any) {
        self.performSegue(withIdentifier: "colour", sender: self)
        colourPicked = "Magenta"
    }
    @IBAction func orangePicker(_ sender: Any) {
        self.performSegue(withIdentifier: "colour", sender: self)
        colourPicked = "Orange"
    }
    @IBAction func purplePicker(_ sender: Any) {
        self.performSegue(withIdentifier: "colour", sender: self)
        colourPicked = "Purple"
    }
    @IBAction func brownPicker(_ sender: Any) {
        self.performSegue(withIdentifier: "colour", sender: self)
        colourPicked = "Brown"
    }
    @IBAction func blackPicker(_ sender: Any) {
        self.performSegue(withIdentifier: "colour", sender: self)
        colourPicked = "Black"
    }
    @IBAction func lightGreyPicker(_ sender: Any) {
        self.performSegue(withIdentifier: "colour", sender: self)
        colourPicked = "Light Grey"
    }
    @IBAction func darkGreyPicker(_ sender: Any) {
        self.performSegue(withIdentifier: "colour", sender: self)
        colourPicked = "Dark Grey"
    }
    
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
}
