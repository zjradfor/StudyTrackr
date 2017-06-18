//
//  TimerViewController.swift
//  StudyTrackr Final Project
//
//  Created by ICS 4UI, Spring 2017.
//  Copyright © 2017 EDSS. All rights reserved.
//

import UIKit
import CoreData
import UserNotifications

    //Steph and Nadia worked on timer function (Timer and buttons)
// Emily worked on break buttons and user input for the timer.
class TimerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    //Final copy
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
    var subject = ""
    
    func setDateValue() -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        return dateFormatter.string(from:Date())
    }
    
        let date = String(describing: Date())
  
/* CR ??
        @IBAction func segueToStudyEvents(_ sender: Any) {
            
        }
        
*/
    
        @IBOutlet weak var TimerValue: UITextField!
        @IBOutlet weak var breakOrStudy: UILabel!

    //PickerView Menu
    @IBOutlet weak var subjectPicker: UIPickerView!
    
    var pickTheSubject: [Subject] = []
    
    func pickerView(_ subjectPicker: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return pickTheSubject[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return pickTheSubject.count
    }
    
    
    func numberOfComponents(in subjectPicker: UIPickerView) -> Int{
        return 1
    }
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    func getData(){
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName:"Subject")
        do {
            let results = try context.fetch(request)
            if results.count>0{
                for result in results as! [NSManagedObject]{
                    pickTheSubject.append(result as! Subject)
                }
            }
        }
        catch{
            print ("Fetching Failed")
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        subject = pickTheSubject[row].name!
    }
    
    

    
    
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
    
    //User input for time entered
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
       
    //Start Button
        @IBAction func startButtonTapped(_ sender: UIButton) {
            if isTimerRunning == false{
                runTimer()
                breakOrStudy.text = "Get studying!"
                self.startButton.isEnabled = false
                timerLabel.text = timeString(time:TimeInterval(seconds))
            }

        }
    
    //Pause Button
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
    
    //Done Button
    @IBAction func doneButtonTapped(_ sender: UIButton) {
        //Stop both timers
        timer.invalidate()
        breakTimer.invalidate()
        //Reset text indicating if user is on break or study timer
        breakOrStudy.text = "Enter your study time"
        //Reset timer values
        seconds = 0
        breakTime = 0
        //Reset timer on screen to zero
        timerLabel.text = String(seconds)
        //
        isTimerRunning = false
        pauseButton.isEnabled = false
        startButton.isEnabled = true
        self.resumeTapped = false
        self.pauseButton.setTitle("Pause", for: .normal)
        //Create a new study event for the minute tracker
        let date = setDateValue()
        guard let newStudyEvent = StudyEvent(studyTime: studyTime, subject: subject, date: date) else{
            fatalError("cannot create study event")
        }
        print("starting now")
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        print("setting up done")
        let newTimerThings = NSEntityDescription.insertNewObject(forEntityName: "TimerThings", into: context)
        print("created new timerthings")
        newTimerThings.setValue(newStudyEvent.date, forKey: "date")
        newTimerThings.setValue(newStudyEvent.subject, forKey: "subjectStudied")
        newTimerThings.setValue(newStudyEvent.studyTime, forKey: "studyTime")
        print("set all values")
        do{
            try context.save()
            print ("saved")
        }
        catch{
            print("error here")
        }
        // studyEvents.insert(newStudyEvent, at: 0)
        
        
    }

  /* CR repository version
 @IBAction func doneButtonTapped(_ sender: UIButton) {
            timer.invalidate()
            seconds = 0
     
     
            timerLabel.text = String(seconds)
            isTimerRunning = false
            seconds = 0
            pauseButton.isEnabled = false
            startButton.isEnabled = true
            guard let newStudyEvent = StudyEvent(studyTime: studyTime, subject: "Math", date: date) else{
                fatalError("cannot create study event")
            }
            studyEvents += [newStudyEvent]
            
        }
*/
        func runTimer(){
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(TimerViewController.updateTimer)), userInfo: nil, repeats: true)
            isTimerRunning = true
            pauseButton.isEnabled = true
            
        }
 
    
    
        
    //Updates the study timer
    func updateTimer() {
        if seconds < 1{
            timer.invalidate()
            timerAlert(title: "Done!", message: "You completed your study time. Good Work!")
            //timerNotification(title: "Done!", body: "Good work, you are done studying!", identifier: "end.of.time")
            breakOrStudy.text = "Done!"
        }else{
            seconds -= 1
            timerLabel.text = timeString(time: TimeInterval(seconds))
            //Determines when to start the break timer and pause the study timer
            if breakTime > 0{
                if whenIsBreak == seconds{
                    self.pauseButton.isEnabled = false
                    timer.invalidate()
                    runbreakTimer()
                    timerAlert(title: "Break Time!", message: "Take a minute to stretch your legs.")
                    //timerNotification(title: "Break time", body: "Take a minute to stretch your legs.", identifier: "start.of.break")
                    timerLabel.text = timeString(time:TimeInterval(breakTime))
                    updatebreakTimer()
                    breakOrStudy.text = "Break Time!"
                }else{
                    breakTimer.invalidate()
                    self.pauseButton.isEnabled = true
                    breakOrStudy.text = "Get studying!"
                }// last else
            }//line 207
        }//1st else
    }//update timer
    
    //Runs the break timer
    func runbreakTimer(){
        breakTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(TimerViewController.updatebreakTimer)), userInfo: nil, repeats: true)
    
    }

    //Displays the time in a hour, minute, second format
        func timeString(time:TimeInterval) -> String {
            let hours = Int(time) / 3600
            let minutes = Int(time) / 60 % 60
            let seconds = Int(time) % 60
            return String(format:"%02i:%02i:%02i", hours, minutes, seconds)
        }
    
    //Updates the break timer when it is being run
    func updatebreakTimer(){
        if breakTime<1 {
            breakTimer.invalidate()
            timerAlert(title: "Break time over", message: "Time to get back to studying!")
            //timerNotification(title: "Break time over", body: "Good job, you are done studying", identifier: "end.of.break")
            runTimer()
            breakOrStudy.text = "Get studying!"
        }else{
            breakTime -= 1
            timerLabel.text = timeString(time:TimeInterval(breakTime))
        }
    }

    func timerAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction( title: "OK", style: .default)
        
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }

    /*
     //NOTIFICATIONS
     
     //Handles notifications when app is in the foreground
     func userNotificationCenter(_ center: UNUserNotificationCenter,
     willPresent notification: UNNotification,
     withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void){
     completionHandler(UNNotificationPresentationOptions.sound)
     completionHandler(UNNotificationPresentationOptions.alert)
     
     }
     
     
     //Notification for Timer
     func timerNotification(title: String, body: String, identifier: String){
     //Content of the Notification
     let content = UNMutableNotificationContent()
     content.title = title
     content.body = body
     content.sound = UNNotificationSound.default()
     
     //Notification Trigger
     let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1,  repeats: false)
     
     //Requesting the notification use
     let studyTimeIdentifier = identifier
     let studyTime = UNNotificationRequest(identifier: studyTimeIdentifier, content: content, trigger: trigger)
     
     // Schedule the notification.
     let center = UNUserNotificationCenter.current()
     center.add(studyTime) { (error : Error?) in
     if let theError = error {
     print(theError.localizedDescription)
     }
     }
     
     
     }
     */
    
    
        @IBOutlet weak var pauseButton: UIButton!

        @IBOutlet weak var startButton: UIButton!

        @IBOutlet weak var doneButton: UIButton!

        
    override func viewDidLoad() {
        super.viewDidLoad()
        pauseButton.isEnabled = false
        self.subjectPicker.dataSource = self
        self.subjectPicker.delegate = self
        getData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    /* override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     if segue.identifier == "studyEventSegue"{
     if let SecondViewController = segue.destination as? EventTableViewController{
     SecondViewController.events = studyEvents
     }
     }
     }*/
}

