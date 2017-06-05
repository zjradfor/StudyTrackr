//
//  MarkbookViewController.swift
//  StudyTrackr
//
//  Created by Alex Berry on 2017-05-24.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class MarkbookViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var tableView: UITableView!
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var subjects: [Subject] = [] // init empty array for subjects
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        getData()
        tableView.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return subjects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let spot = subjects[indexPath.row]
        
        if let myName = spot.name {
            cell.textLabel?.text = myName
        }
        return cell
    }
    
    func getData(){
        do {
            subjects = try context.fetch(Subject.fetchRequest())
        }
        catch{
            print ("Fetching Failed")
        }
    }
   
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let spot = subjects[indexPath.row]
            context.delete(spot)
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            
            do {
                subjects = try context.fetch(Subject.fetchRequest())
            }
            catch{
                print ("Fetching Failed")
            }
        }
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mark"{
            let vc = segue.destination as! MarksViewController
    }
    }
 
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        //markToSegue = indexPath.row
        self.performSegue(withIdentifier: "mark", sender: self)
    }

    
    
//    override func didReceiveMemoryWarning() {
  //      super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    //}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
