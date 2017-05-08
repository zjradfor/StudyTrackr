//
//  CalendarHeaderCollectionReusableView.swift
//  StudyTrackr
//
//  Created by John Slomka on 2017-05-03.
//  Copyright © 2017 John Slomka. All rights reserved.
//

import UIKit

class CalendarHeaderCollectionReusableView: UICollectionReusableView {
    var dateHeader: UILabel!
     func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> CalendarHeaderCollectionReusableView
    {
    
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "SectionHeader", for: indexPath as IndexPath) as! CalendarHeaderCollectionReusableView
        
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        formatter.timeStyle = .none
        header.dateHeader.text = "\(formatter.string(from: date))"
        
        return header
    }
