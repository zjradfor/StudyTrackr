//
//  FirstViewController.swift
//  StudyTrackr
//
//  Created by John Slomka on 2017-04-27.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    struct box {
        @IBOutlet weak var cell: UICollectionViewCell!
        @IBOutlet weak var label: UILabel!
        @IBOutlet weak var button: UIButton!
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

