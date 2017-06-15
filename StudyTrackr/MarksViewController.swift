//
//  MarksViewController.swift
//  StudyTrackr
//
//  Created by Zach Radford on 2017-06-05.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class MarksViewController: UIViewController {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var nameFromSegue = ""
    var markFromSegue: Subject?
    
    var subjects: [Subject] = []
    var spot: Int?
    var current: Subject?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = nameFromSegue
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        getData()
        
        for (index, element) in subjects.enumerated(){
            if element.name == title{
                spot = index
            }
        }
        current = subjects[spot!]
        
        
        if current!.assignments == 0{
        markLabel.text = String(current!.mark) + "%"
        }
        else{
            markLabel.text = String(current!.mark / current!.assignments) + "%"
        }
        //divide this by assignments, watch for 0
    }
    
    func getData(){
        do{
            subjects = try context.fetch(Subject.fetchRequest())
            }
        catch{
            print("fetching failed")
        }
        }
    
    @IBOutlet weak var markLabel: UILabel!
    
    
    @IBAction func MarkAddPressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "Add Mark", message: "Enter mark here", preferredStyle: .alert)
        let saveAction = UIAlertAction(title: "Add", style: .default){
            [unowned self] action in
            guard let textField = alert.textFields?.first,
                let markToSave = textField.text else {
                    return
            }
            self.save(mark: Double(markToSave)!)
        }
        
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .default)
        
    
        
        alert.addTextField(configurationHandler: {(textField: UITextField!) in textField.keyboardType = UIKeyboardType.decimalPad})
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        //  let textField = alert.textFields![0]
        // markLabel.text = textField.text
        
        present(alert, animated: true)
    }
    
    func save(mark: Double){
        
        current!.mark = Double(floor(current!.mark * 100)/100) + mark
        current!.assignments = current!.assignments + 1
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        getData()
        markLabel.text = String(current!.mark / current!.assignments) + "%"
    }
    
    @IBAction func helpButtonPressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "Help", message: "After every test/assignment, enter the mark you recieved to generate a running average for the class", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(cancelAction)
        
        present(alert, animated: true)
    }
    
    
    
    
    
    
   // override func didReceiveMemoryWarning() {
        //super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

//}
