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
    class TimerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
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
        func setDateValue() ->String{
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .medium
            dateFormatter.timeStyle = .none
            return dateFormatter.string(from:Date())
            
        }

        @IBOutlet weak var subjectPicker: UIPickerView!
        
        var pickTheSubject = ["Math", "Language Arts", "Science"]
        
        
        
        
    
        
        

        @IBOutlet weak var TimerValue: UITextField!
        @IBOutlet weak var breakOrStudy: UILabel!

      
        
        @IBAction func breakTime10(_ sender: UIButton) {
            //seconds = seconds + (1*60)
            breakTime = 1 * 60
        }
        
        @IBAction func breakTime15(_ sender: UIButton) {
            //seconds = seconds + (15*60)
            breakTime = 15 * 60
        }
       
        @IBAction func breakTime20(_ sender: UIButton) {
            //seconds = seconds + (20*60)
            breakTime = 20 * 60
        }
        
        @IBAction func breakTime25(_ sender: UIButton) {
            //seconds = seconds + (25*60)
            breakTime = 25 * 60
        }
        
        @IBAction func breakTime30(_ sender: UIButton) {
            //seconds = seconds + (30*60)
            breakTime = 30 * 60
        }
        
        @IBAction func breakTime35(_ sender: UIButton) {
            //seconds = seconds + (35*60)
            breakTime = 35 * 60

        }
    

        @IBAction func userTime(_ sender: UITextField) {
            
                if let unWrappedInt = Int(TimerValue.text!){
                    seconds = unWrappedInt * 60
                    whenIsBreak = (Int(TimerValue.text!)!*60) / 2
                    studyTime = (Int(TimerValue.text!)!)
                }
                else{
                    TimerValue.text = ""
                    seconds = 0
                }
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
            let date = setDateValue()
            guard let newStudyEvent = StudyEvent(studyTime: studyTime, subject: "Math", date: date) else{
                fatalError("cannot create study event")
            }
            studyEvents += [newStudyEvent]
            self.resumeTapped = false
            self.pauseButton.setTitle("Pause", for: .normal)
            
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
    }
    else{
        seconds -= 1
        timerLabel.text = timeString(time: TimeInterval(seconds))
    if whenIsBreak == seconds{
        timer.invalidate()
        runbreakTimer()
        timerLabel.text = timeString(time:TimeInterval(breakTime))
        updatebreakTimer()
        breakOrStudy.text = "Break Time!"
        }
    else{
        breakTimer.invalidate()
        breakOrStudy.text = "Get Studying!"
        }
    }
    
}
    func runbreakTimer(){
        breakTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(TimerViewController.updatebreakTimer)), userInfo: nil, repeats: true)
    
    }



        func timeString(time:TimeInterval) -> String {
            let hours = Int(time) / 3600
            let minutes = Int(time) / 60 % 60
            let seconds = Int(time) % 60
            return String(format:"%02i:%02i:%02i", hours, minutes, seconds)
        }
        
        func runBreakTimer(){
            breakTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(TimerViewController.updatebreakTimer)), userInfo: nil, repeats: true)
        }
        
func updatebreakTimer(){
    if breakTime<1 {
        breakTimer.invalidate()
        runTimer()
    }
    else{
        breakTime -= 1
        timerLabel.text = timeString(time:TimeInterval(breakTime))
    }
}
    
        @IBOutlet weak var pauseButton: UIButton!

        @IBOutlet weak var startButton: UIButton!

        @IBOutlet weak var doneButton: UIButton!
        
        func numberOfComponents(in subjectPicker: UIPickerView) -> Int{
            return 1
        }
        
        func pickerView(_ subjectPicker: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
            return pickTheSubject[row]
        }

        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
            return pickTheSubject.count
        }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        pauseButton.isEnabled = false
        self.subjectPicker.dataSource = self
        self.subjectPicker.delegate = self
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "studyEventSegue"{
                if let SecondViewController = segue.destination as? EventTableViewController{
                   SecondViewController.events = studyEvents
                }
            }
          
        }
        
}

