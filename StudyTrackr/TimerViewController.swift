//
//  TimerViewController.swift
//  StudyTrackr
//
//  Created by Stephanie Ball on 2017-05-01.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit
    //Steph and Nadia worked on timer function (Timer and buttons)
// Emily worked on break buttons and user input for the timer.
    class TimerViewController: UIViewController {
        @IBOutlet weak var timerLabel: UILabel!
        var seconds = 0
        var timer = Timer()
        var breakTimer = Timer()
        var isTimerRunning = false
        var resumeTapped = false
        var breakTime:Int = 0
        var whenIsBreak = 0
        var isBreakTimeAdded:Bool = false
        var studyEvents = [StudyEvent]()
        var studyTime = 0
        let date = String(describing: Date())
        @IBOutlet weak var TimerValue: UITextField!

      
        
        @IBAction func breakTime10(_ sender: UIButton) {
            seconds = seconds + (1*60)
            breakTime = 1
        }
        
        @IBAction func breakTime15(_ sender: UIButton) {
            seconds = seconds + (15*60)
            breakTime = 15
        }
       
        @IBAction func breakTime20(_ sender: UIButton) {
            seconds = seconds + (20*60)
            breakTime = 20
        }
        
        @IBAction func breakTime25(_ sender: UIButton) {
            seconds = seconds + (25*60)
            breakTime = 25
        }
        
        @IBAction func breakTime30(_ sender: UIButton) {
            seconds = seconds + (30*60)
            breakTime = 30
        }
        
        @IBAction func breakTime35(_ sender: UIButton) {
            seconds = seconds + (35*60)
            breakTime = 35

        }
    

        @IBAction func userTime(_ sender: UITextField) {
            seconds = seconds + (Int(TimerValue.text!)!*60)
            
        studyTime = studyTime + (Int(TimerValue.text!)!*60)

        }
        
       
        
        @IBAction func startButtonTapped(_ sender: UIButton) {
            let whenIsBreak = seconds / 2
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
            guard let newStudyEvent = StudyEvent(studyTime:                       studyTime, subject: "Math", date:date)else{
                fatalError("Cannot create new study event")
            }
            studyEvents += [newStudyEvent]
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
                if whenIsBreak == seconds {
                    timer.invalidate()
                    runBreakTimer()
                    timerLabel.text = timeString(time:TimeInterval(breakTime))
                    if breakTime < 1 {
                        breakTimer.invalidate()
                    } else {
                        breakTime -= 1
                        timerLabel.text = timeString(time:TimeInterval(breakTime))
                    }
                    
                }else{
                    breakTimer.invalidate()
                }

            }
        }
        
        
        func timeString(time:TimeInterval) -> String {
            let hours = Int(time) / 3600
            let minutes = Int(time) / 60 % 60
            let seconds = Int(time) % 60
            return String(format:"%02i:%02i:%02i", hours, minutes, seconds)
        }
        
        
       /* func breakTimer() {
            if whenIsBreak == seconds {
                timer.invalidate()
                runBreakTimer()
                timerLabel.text = timeString(time:TimeInterval(breakTime))
                
            }else{
                breakTimer.invalidate()
            }
        }*/
        
        func runBreakTimer(){
            breakTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(TimerViewController.updateTimer)), userInfo: nil, repeats: true)
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
