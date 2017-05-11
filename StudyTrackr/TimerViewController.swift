//
//  TimerViewController.swift
//  StudyTrackr
//
//  Created by Stephanie Ball on 2017-05-01.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit
    
    class TimerViewController: UIViewController {
        @IBOutlet weak var timerLabel: UILabel!
        var seconds = 0
        var timer = Timer()
        var isTimerRunning = false
        var resumeTapped = false
        var breakTime:Int = 0
        var isBreakTimeAdded:Bool = false
        @IBOutlet weak var TimerValue: UITextField!
        @IBOutlet weak var breakTime_10: UIButton!
        @IBOutlet weak var breakTime_15: UIButton!
        @IBOutlet weak var breakTime_20: UIButton!
        @IBOutlet weak var breakTime_25: UIButton!
        @IBOutlet weak var breakTime_30: UIButton!
        @IBOutlet weak var breakTime_35: UIButton!
        @IBOutlet weak var label: UILabel!
        lazy var buttons: [UIButton] = [self.breakTime_10, self.breakTime_15, self.breakTime_20, self.breakTime_25, self.breakTime_30, self.breakTime_35]
        
        @IBAction func breakTime10(_ sender: UIButton) {
            seconds = seconds + (10*60)
            isBreakTimeAdded = true
        }
        
        @IBAction func breakTime15(_ sender: UIButton) {
            seconds = seconds + (15*60)
            isBreakTimeAdded = true
        }
       
        @IBAction func breakTime20(_ sender: UIButton) {
            seconds = seconds + (20*60)
            isBreakTimeAdded = true
        }
        
        @IBAction func breakTime25(_ sender: UIButton) {
            seconds = seconds + (25*60)
            isBreakTimeAdded = true
        }
        
        @IBAction func breakTime30(_ sender: UIButton) {
            seconds = seconds + (30*60)
            isBreakTimeAdded = true
        }
        
        @IBAction func breakTime35(_ sender: UIButton) {
            seconds = seconds + (35*60)
            isBreakTimeAdded = true
        }
    

        @IBAction func userTime(_ sender: UITextField) {
            seconds = seconds + (Int(TimerValue.text!)!*60)
            label.text = TimerValue.text
        }
        
       
        
        @IBAction func startButtonTapped(_ sender: UIButton) {
            if isTimerRunning == false{
                runTimer()
                self.startButton.isEnabled = false
                timerLabel.text = timeString(time:TimeInterval(seconds))
            }
        }
        
        @IBAction func pauseButtonTapped(_ sender: UIButton) {
            if self.resumeTapped == false{
                timer.invalidate()
                self.resumeTapped = true
                self.pauseButton.setTitle("Resume", for: .normal)
            }else{
                self.resumeTapped = false
                self.pauseButton.setTitle("Pause", for: .normal)
                runTimer()
            }
        }
        
        @IBAction func doneButtonTapped(_ sender: UIButton) {
            timer.invalidate()
            seconds = 0
            
        
            timerLabel.text = String(seconds)
            isTimerRunning = false
            seconds = 0
            pauseButton.isEnabled = false
            startButton.isEnabled = true
        }
        
        func runTimer(){
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(TimerViewController.updateTimer)), userInfo: nil, repeats: true)
            isTimerRunning = true
            pauseButton.isEnabled = true
        }
        
        func updateTimer() {
            if seconds < 1{
                timer.invalidate()
                //Send alert to indicate time's up
            }else{
                seconds -= 1
                timerLabel.text = timeString(time: TimeInterval(seconds))
            }
        }
        
        func timeString(time:TimeInterval) -> String {
            let hours = Int(time) / 3600
            let minutes = Int(time) / 60 % 60
            let seconds = Int(time) % 60
            return String(format:"%02i:%02i:%02i", hours, minutes, seconds)
        }
        
        @IBOutlet weak var pauseButton: UIButton!

        @IBOutlet weak var startButton: UIButton!

        @IBOutlet weak var doneButton: UIButton!

        
    override func viewDidLoad() {
        super.viewDidLoad()
        pauseButton.isEnabled = false
        if isBreakTimeAdded == true{
            for button in self.buttons{
                button.isEnabled = false
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
