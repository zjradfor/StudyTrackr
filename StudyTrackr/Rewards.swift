//
//  Rewards.swift
//  StudyTrackr Final Project
//
//  Created by ICS 4UI, Spring 2017.
//  Copyright © 2017 EDSS. All rights reserved.
//

import Foundation
import UIKit

class Rewards {
    var coins : UInt32
    init(coins : UInt32) {
        self.coins = coins
    }

    func DailyReward () {
let GiftCoins = arc4random_uniform(25) + 1

        
       
    
    
coins = GiftCoins + coins  //The Coins recieved from the daily gift is added to the total amount of coins
        }
    
//    switch (purchase) {
//    var price
//if coins < price
//    }
    
    
    
    /*
    var price: Int //price variable will need to be set as the button they choose
    
     switch (purchase) {
     case 100:
     if (coins => price){
     coins = coins - price
     print ("You bought a new Background")
     }
     case 200:
     if (coins => price){
     coins = coins - price
     print ("You bought a new Font")
     }
     case 300:
     if (coins => price){
     coins = coins - price
     print ("You bought a new Avatar")
     }
     default:
     print ("Error")
     }                                     i don't know if we will be able to use this yet
     */
    
    
    
    
    
    
}


class Background {
    var BkgndCol : Bool
    init (BkgndCol: Bool) {
   self.BkgndCol = BkgndCol

    }
    
    func SetColour () {
    BkgndCol = true
    
    }
}


