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
            print("Sent: \(colourPicked)")
            vc.eventColour = colourPicked
        }
    }
    
    // MARK: - Colour Picking
    var colourPicked = UIColor.black
    @IBAction func yellowPicker(_ sender: Any) {
        colourPicked = UIColor.yellow
        self.performSegue(withIdentifier: "colour", sender: self)
    }
    @IBAction func bluePicker(_ sender: Any) {
        colourPicked = UIColor.blue
        self.performSegue(withIdentifier: "colour", sender: self)
    }
    @IBAction func redPicker(_ sender: Any) {
        colourPicked = UIColor.red
        self.performSegue(withIdentifier: "colour", sender: self)
    }
    @IBAction func cyanPicker(_ sender: Any) {
        colourPicked = UIColor.cyan
        self.performSegue(withIdentifier: "colour", sender: self)
    }
    @IBAction func greenPicker(_ sender: Any) {
        colourPicked = UIColor.green
        self.performSegue(withIdentifier: "colour", sender: self)
    }
    @IBAction func magentaPicker(_ sender: Any) {
        colourPicked = UIColor.magenta
        self.performSegue(withIdentifier: "colour", sender: self)
    }
    @IBAction func orangePicker(_ sender: Any) {
        colourPicked = UIColor.orange
        self.performSegue(withIdentifier: "colour", sender: self)
    }
    @IBAction func purplePicker(_ sender: Any) {
        colourPicked = UIColor.purple
        self.performSegue(withIdentifier: "colour", sender: self)
    }
    @IBAction func brownPicker(_ sender: Any) {
        colourPicked = UIColor.brown
        self.performSegue(withIdentifier: "colour", sender: self)
    }
    @IBAction func blackPicker(_ sender: Any) {
        colourPicked = UIColor.black
        self.performSegue(withIdentifier: "colour", sender: self)
    }
    @IBAction func lightGreyPicker(_ sender: Any) {
        colourPicked = UIColor.lightGray
        self.performSegue(withIdentifier: "colour", sender: self)
    }
    @IBAction func darkGreyPicker(_ sender: Any) {
        colourPicked = UIColor.darkGray
        self.performSegue(withIdentifier: "colour", sender: self)
    }
    
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
}
