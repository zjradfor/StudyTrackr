//
//  CalendarCell.swift
//  StudyTrackr
//
//  Created by Tristan Devos on 2017-05-02.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class CalendarCell: UICollectionViewCell {
    var textLabel: UILabel
    var button: UIButton

    override init(frame: CGRect){
        textLabel = UILabel(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height/2))
        button = UIButton(frame: CGRect(x: frame.size.width / 2, y: frame.size.height / 2, width: frame.size.width, height: frame.size.height))
        super.init(frame: frame)
        //x: 0, y: 20
        textLabel = UILabel(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height/2))
        textLabel.font = UIFont.systemFont(ofSize: UIFont.systemFontSize)
        textLabel.textAlignment = .natural
        textLabel.textColor = UIColor.darkText
        contentView.addSubview(textLabel)
        button = UIButton(frame: CGRect(x: frame.size.width / 2, y: frame.size.height / 2, width: frame.size.width, height: frame.size.height))
        button.addTarget(self, action: #selector(ratingButtonTapped), for: .touchUpInside)
    }
    
    func ratingButtonTapped() {
         print("Button Pressed!")
    }
                          
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
