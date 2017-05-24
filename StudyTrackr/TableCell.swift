//
//  TableCell.swift
//  StudyTrackr
//
//  Created by Tristan Devos on 2017-05-12.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {
   /* var tableTextLabel: UILabel
    
    init(frame: CGRect){
        //Text
        tableTextLabel = UILabel(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height/2))
        tableTextLabel.font = UIFont.systemFont(ofSize: UIFont.systemFontSize)
        tableTextLabel.textAlignment = .natural
        tableTextLabel.textColor = UIColor.darkText
        super.init()
        contentView.addSubview(tableTextLabel)
    }
    
    */
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
