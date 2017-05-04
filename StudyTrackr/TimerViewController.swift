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
    
        
        var seconds = 70
        var timer = Timer()
        var isTimerRunning = false
        var resumeTapped = false
        var breakTime:Int = 0
        var isBreakTimeAdded:Bool = false
        
        @IBOutlet weak var breakTime_10: UIButton!
        @IBOutlet weak var breakTime_15: UIButton!
        @IBOutlet weak var breakTime_20: UIButton!
        @IBOutlet weak var breakTime_25: UIButton!
        @IBOutlet weak var breakTime_30: UIButton!
        @IBOutlet weak var breakTime_35: UIButton!
        
        
        @IBAction func breakTime10(_ sender: UIButton) {
            breakTime = 10
            isBreakTimeAdded = true
        }
        
        @IBAction func breakTime15(_ sender: UIButton) {
            breakTime = 15
            isBreakTimeAdded = true
        }
       
        @IBAction func breakTime20(_ sender: UIButton) {
            breakTime = 20
            isBreakTimeAdded = true
        }
        
        @IBAction func breakTime25(_ sender: UIButton) {
            breakTime = 25
            isBreakTimeAdded = true
        }
        
        @IBAction func breakTime30(_ sender: UIButton) {
            breakTime = 30
            isBreakTimeAdded = true
        }
        
        @IBAction func breakTime35(_ sender: UIButton) {
            breakTime = 35
            isBreakTimeAdded = true
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
            timerLabel.text = "You are done studying!"
            isTimerRunning = false
            seconds = 70
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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
