//
//  CalendarCollectionViewController.swift
//  StudyTrackr
//
//  Created by Tristan Devos on 2017-05-01.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

//Temp variable
var tag = 1
var x:CGFloat = 0
var y:CGFloat = 0
private let reuseIdentifier = "Cell"

class CalendarCollectionViewController: UICollectionViewController {

    
    override func viewDidLoad() {
        

                //  dateHeader.text = "\(formatter.string(from: date))"

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(CalendarCell.self, forCellWithReuseIdentifier: "Cell")
        self.collectionView!.register(CalendarHeaderCollectionReusableView.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "header")
        // Do any additional setup after loading the view.
        
    }
    
    //Header
    override func collectionView(_ collectionView: UICollectionView,
                                 viewForSupplementaryElementOfKind kind: String,
                                 at indexPath: IndexPath) -> UICollectionReusableView {
        //1
        switch kind {
        //2
        case UICollectionElementKindSectionHeader:
            //3
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "CalendarHeaderCollectionReusableView",for: indexPath) as! CalendarHeaderCollectionReusableView
            let date = Date()
            let formatter = DateFormatter()
            formatter.dateStyle = .full
            formatter.timeStyle = .none
            headerView.dateHeader.text = "\(formatter.string(from: date))"
        return headerView
        default:
            //4
            assert(false, "Unexpected element kind")
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: UICollectionViewDataSource
    
    //Vertical Cells
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    // Horizontal Cells
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 42
    }
    
    let screenSize = UIScreen.main.bounds
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CalendarCell
        cell.frame = CGRect(x: x * (screenSize.width / 7), y: (y * (screenSize.height / 6)) + 62, width: (screenSize.width / 7) - 1, height: (screenSize.height / 6) - 1)
        cell.backgroundColor = UIColor.blue
        cell.textLabel.text = "\(tag)"
        tag += 1
        x += 1
        if x == 7{
            y += 1
            x = 0
        }
        
        return cell
    }
    
    
    
    
    
    

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
