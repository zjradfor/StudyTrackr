//
//  EventColourPickerViewController.swift
//  StudyTrackr
//
//  Created by Tristan Devos on 2017-05-26.
//  Copyright © 2017 John Slomka. All rights reserved.
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
    @IBAction func colourPicked(_ sender: Any) {
        performSegue(withIdentifier: "colourPickedSegue", sender: self)
        NewEventViewController().eventColour = colour
    }
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "colour"){
            let vc = segue.destination as! NewEventViewController
        }
    }
    */
    // MARK: - Colour Picking
    @IBAction func yellowPicker(_ sender: Any) {
        colour = UIColor.yellow
    }
    @IBAction func bluePicker(_ sender: Any) {
        colourCell().setViewColour(colour: UIColor.blue)
    }
    @IBAction func redPicker(_ sender: Any) {
        colourCell().setViewColour(colour: UIColor.red)
    }
    @IBAction func cyanPicker(_ sender: Any) {
        colourCell().setViewColour(colour: UIColor.cyan)
    }
    @IBAction func greenPicker(_ sender: Any) {
        colourCell().setViewColour(colour: UIColor.green)
    }
    @IBAction func magentaPicker(_ sender: Any) {
        colourCell().setViewColour(colour: UIColor.magenta)
    }
    @IBAction func orangePicker(_ sender: Any) {
        colourCell().setViewColour(colour: UIColor.orange)
    }
    @IBAction func purplePicker(_ sender: Any) {
        colourCell().setViewColour(colour: UIColor.purple)
    }
    @IBAction func brownPicker(_ sender: Any) {
        colourCell().setViewColour(colour: UIColor.brown)
    }
    @IBAction func blackPicker(_ sender: Any) {
        colourCell().setViewColour(colour: UIColor.black)
    }
    @IBAction func lightGreyPicker(_ sender: Any) {
        colourCell().setViewColour(colour: UIColor.lightGray)
    }
    @IBAction func darkGreyPicker(_ sender: Any) {
        colourCell().setViewColour(colour: UIColor.darkGray)
    }
    
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
}
