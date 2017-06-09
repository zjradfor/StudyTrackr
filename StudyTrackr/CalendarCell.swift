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

    override init(frame: CGRect){
        
        //Text
        textLabel = UILabel(frame: CGRect(x: 2, y: 0, width: frame.size.width, height: frame.size.height/2))
        
        super.init(frame: frame)
        //Text
        textLabel = UILabel(frame: CGRect(x: 2, y: 0, width: frame.size.width, height: frame.size.height))
        textLabel.font = UIFont.systemFont(ofSize: UIFont.systemFontSize)
        textLabel.textAlignment = .center
        textLabel.textColor = UIColor.darkText
        contentView.addSubview(textLabel)
    }
    
    
                          
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
